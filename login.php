<?php
    require_once('./required/headers.php');
    require_once('./required/connection.php');

    $username = TestInput($decoded_content['username']);
    $password = TestInput($decoded_content['password']);

    if(empty($username) || empty($password)){
        http_response_code(400);
        exit;
    }

    // Check if user exists

    // If user exists, check if details supplied correspond with details stored

    // If details correspond, return JWT and success code
