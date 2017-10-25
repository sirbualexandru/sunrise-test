<?php
include('class/crud.class.php');
include('class/template.class.php');
include('class/messages.class.php');

// Start a Session
if (!session_id()) @session_start();

define('BASE_URL', '/'. $_SERVER['SERVER_NAME']. dirname($_SERVER["REQUEST_URI"]. '?'). '/');

// DB object
$db = new CRUD();
$db->connect();

// Message object
$msg = new FlashMessages();
$msg->display();
?>