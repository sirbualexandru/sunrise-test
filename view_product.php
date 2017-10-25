<?php

require('core.php');

if ($_GET['id']) {
	// get product data by id
	$db->select('products', '*' , NULL, 'id="'. $_GET['id']. '"', NULL);
	$product = $db->getResult();

	if (empty($product)) {
		header('Location: /'. BASE_URL . 'index.php');
		$msg->warning('Warning! No product found with this id.');
	} else { 
		$product = $product[0];
	}

	// get all categories for select
	$db->select('categories', '*' , NULL, NULL, 'id DESC');
	$categories = $db->getResult();

	foreach ($categories as $category) {
		$row = new Template("templates/category_option.tpl");
		
		foreach ($category as $key => $value) {
			$row->set($key, $value);
		}
		$categoriesTemplates[] = $row;
	}

	$categoriesContents = Template::merge($categoriesTemplates);

	$form = new Template("templates/view_product.tpl");
	$form->set("categories", 	$categoriesContents);
	$form->set("id",   			$product['id']);
	$form->set("title",   		$product['title']);
	$form->set("price",   		$product['price']);
	$form->set("quantity",		$product['quantity']);
	$form->set("category_id",  	$product['category_id']);
	$form->set("notes",  		$product['notes']);

	$layout = new Template("templates/layout.tpl");
	$layout->set("title", "Edit Product");
	$layout->set("content", $form->output());
	$layout->set("BASE_URL", BASE_URL);

	echo $layout->output();
} else {
	$msg->error('Error! Undefined ID');
	header('Location: /'. BASE_URL . 'index.php');
}
