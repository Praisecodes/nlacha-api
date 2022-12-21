<?php
    require_once('./required/headers.php');
    require_once('./required/connection.php');

    $name = TestInput($decoded_content['Name']);
    $username = TestInput($decoded_content['username']);
    $password = TestInput($decoded_content['password']);
    $email = TestInput($decoded_content['email']);

    if(empty($name) || empty($username) || empty($password) || empty($email)){
        http_response_code(400);
        exit;
    }

    // Check if the user is already registered

    // Add new user to database
    
