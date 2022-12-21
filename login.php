<?php
    require "./vendor/autoload.php";
    require_once('./required/headers.php');
    require_once('./required/connection.php');

    use Firebase\JWT\JWT;

    $username = TestInput($decoded_content['username']);
    $password = TestInput($decoded_content['password']);
    $secret_key = "secret_key";

    if(empty($username) || empty($password)){
        http_response_code(400);
        exit;
    }

    // Check if user exists
    $sql = "SELECT `username`, `userPassword` FROM `users` WHERE `username`=?;";
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
        $stmt->close();
        $conn->close();
        echo json_encode(["No Such User"]);
        http_response_code(404);
        exit;
    }

    // If user exists, check if details supplied correspond with details stored
    $mainPassword = "";
    $mainUsername = "";

    while($row = $result->fetch_assoc()){
        $mainPassword = $row['userPassword'];
        $mainUsername = $row['username'];
    }

    $passwordIsVerified = password_verify($password, $mainPassword);
    if(!(($username == $mainUsername) && $passwordIsVerified)){
        $stmt->close();
        $conn->close();
        echo json_encode(["Invalid Details"]);
        http_response_code(400);
        exit;
    }

    // If details correspond, return JWT and success code
    $stmt->close();
    $conn->close();
    $payload = [
        'iss' => 'http://localhost',
        'aud' => 'http://localhost',
        'data' => $username
    ];

    $jwt = JWT::encode($payload, $secret_key, 'HS256');
    echo json_encode([
        'message' => "Success",
        "jwt" => $jwt
    ]);
    http_response_code(200);
    exit;
