<?php

require('core.php');

if ($_GET['id'] != null) {

	// Select related products
	$db->select(
			'product_history',
			'*', // SELECT
			NULL, // JOIN 
			'product_id = "'. $_GET['id']. '"', // WHERE conditions
			'date ASC' // ORDER BY conditions
		);

	$productHistory = $db->getResult();

	if (empty($productHistory)) {
		header('Location: /'. BASE_URL. 'index.php');
		$msg->warning('Warning! Product history was not found.');
	} else { 
		foreach ($productHistory as $product) {
			$row = new Template("templates/history_product_row.tpl");
			
			foreach ($product as $key => $value) {
				$row->set($key, $value);
			}
			$productTemplates[] = $row;
		}

		$productContents = Template::merge($productTemplates);

		// View
		$productList = new Template("templates/history_product.tpl");
		$productList->set("list", $productContents);

		$layout = new Template("templates/layout.tpl");
		$layout->set("title", "Related products list");
		$layout->set("content", $productList->output());
		$layout->set("BASE_URL", BASE_URL);

		echo $layout->output();
	}
} else {
	$msg->error('Error! Undefined ID');
	header('Location: /'. BASE_URL . 'index.php');
}