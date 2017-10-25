<?php

require('core.php');

if (isset($_GET['id']) != null) {
	$id = $_GET['id'];
	$db = new CRUD();
	$db->connect();

	$db->delete('products', 'id='. $id);

	$msg->success('Success! Product deleted with success!');
	header('Location: /'. BASE_URL . 'index.php');
} else {
	$msg->error('Error! Undefined product ID');
	header('Location: /'. BASE_URL . 'index.php');
}

