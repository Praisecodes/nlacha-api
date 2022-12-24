<?php
    require_once './required/headers.php';
    require_once './required/connection.php';

    $name = TestInput($decoded_content['Name']);
    $username = TestInput($decoded_content['username']);
    $password = TestInput(password_hash($decoded_content['password'], PASSWORD_DEFAULT));
    $email = TestInput($decoded_content['email']);

    //Check if user input is empty
    if(empty($name) || empty($username) || empty($password) || empty($email)){
        echo json_encode($decoded_content);
        http_response_code(400);
        exit;
    }

    // Check if the user is already registered
    $sql = "SELECT * FROM `users` WHERE `username`=?;";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('s', $username);

    if(!($stmt->execute())){
        $stmt->close();
        $conn->close();
        http_response_code(500);
        exit;
    }

    $check_result = $stmt->get_result();

    if($check_result->num_rows > 0){
        $stmt->close();
        $conn->close();
        http_response_code(403);
        echo json_encode(["User Already Exists"]);
        exit;
    }

    // Add new user to database if user isn't registered
    $sql = "INSERT INTO `users`(`fullname`,`username`,`email`,`userPassword`) VALUES(?,?,?,?);";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ssss', $name, $username, $email, $password);

    if(!($stmt->execute())){
        $stmt->close();
        $conn->close();
        echo json_encode(["Failed to add user"]);
        http_response_code(500);
        exit;
    }
    echo json_encode(["Success"]);
    http_response_code(200);
    $stmt->close();
    $conn->close();
    exit;
