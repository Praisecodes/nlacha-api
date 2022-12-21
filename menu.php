<?php
    require_once('../required/headers.php');
    require_once('../required/connection.php');

    $category = ((isset($_GET['category']))?trim($_GET['category']):'all');

    /**
     * Get and return all the menu data from database table `menu` where category is equal to the $category variable
     * If $category is equal to "all" then get and return all data from the `menu` table
     */