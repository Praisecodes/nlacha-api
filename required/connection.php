<?php
    $conn = new mysqli('localhost', 'root', '', 'nlacha');

    if($conn->connect_error){
        http_response_code(500);
        exit;
    }