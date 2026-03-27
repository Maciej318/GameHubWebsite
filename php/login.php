<?php
session_start();
require_once "../config/db.php";

$login = $_POST['login'];
$password = $_POST['password'];


$sql = "SELECT * FROM users 
        WHERE username = ? OR email = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $login, $login);
$stmt->execute();

$result = $stmt->get_result();

if($result->num_rows === 1){

    $user = $result->fetch_assoc();

    if(password_verify($password, $user['password'])){

        
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];

        header("Location: ../homePage.html");
        exit();
    }
}

header("Location: ../login.html?error=1");

?>