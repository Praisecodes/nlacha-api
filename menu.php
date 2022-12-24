<?php
    require_once './required/headers.php';
    require_once './required/connection.php';
    require_once './vendor/autoload.php';

    use Firebase\JWT\JWT;
    use Firebase\JWT\Key;

    // Get JWT and check if user exists
    $headers = getallheaders();
    $userJwt = explode(" ", $headers["Authorization"])[1];
    
    $decoded = JWT::decode($userJwt, new Key('secret_key', 'HS256'));
    $decoded_array = (array) $decoded;
    $username = $decoded_array['data'];
    
    $sql = 'SELECT * FROM `users` WHERE `username`=?;';
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('s', $username);

    if(!($stmt->execute())){
        $stmt->close();
        $conn->close();
        http_response_code(500);
        exit;
    }

    $result = $stmt->get_result();
    if(!($result->num_rows > 0)){
        echo json_encode(["Please Login!"]);
        $stmt->close();
        $conn->close();
        http_response_code(404);
        exit;
    }

    // If user exists, store all menu data depending on category in an array
    $category = ((isset($_GET['category']))?$_GET['category']:null);

    if($category == null){
        $stmt->close();
        $conn->close();
        echo json_encode(["Select a category"]);
        http_response_code(400);
        exit;
    }

    $data = array();
    $i = 0;

    $sql = 'SELECT * FROM `menu` WHERE `category`=?;';
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('s', $category);

    if(!($stmt->execute())){
        $stmt->close();
        $conn->close();
        echo json_encode(["Error 2"]);
        http_response_code(500);
        exit;
    }

    $result = $stmt->get_result();

    if(!($result->num_rows > 0)){
        $stmt->close();
        $conn->close();
        http_response_code(404);
        echo json_encode(["No data"]);
        exit;
    }

    // print_r($result);

    while($rows = $result->fetch_assoc()){
        $data[$i]['id'] = $rows['id'];
        $data[$i]['meal'] = $rows['meal'];
        $data[$i]['price'] = $rows['price'];
        $data[$i]['category'] = $rows['category'];
        $data[$i]['stockAvailable'] = $rows['stockAvailable'];
        $data[$i]['image'] = $rows['image'];

        $i++;
    }

    // Return the stored array
    echo json_encode($data);
