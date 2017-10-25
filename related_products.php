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

	// Total Price
	$db->select('products', 'SUM(products.price * products.quantity) as totalPrice', NULL, NULL, NULL);
	$totalPrice = $db->getResult();
	$totalPrice = $totalPrice[0]['totalPrice'];

	// Calculate percent Of total price
	$percOfTotalPrice = 'ROUND(((products.price * products.quantity) / '. $totalPrice. ') * 100, 2) AS percOfTotalPrice';

	// Select related products
	$db->select(
			'products',
			'products.id,products.title,products.price,products.quantity,categories.name AS category,'. $percOfTotalPrice,
			'categories ON products.category_id = categories.id', // JOIN
			'products.category_id="'. $product['category_id']. '" AND products.price="'. $product['price']. '" AND products.id!="'. $product['id']. '"', // WHERE conditions
			'products.id DESC', // ORDER BY conditions
			'5' // LIMIT
		);

	$products = $db->getResult();

	if (empty($products)) {
		header('Location: /'. BASE_URL. 'index.php');
		$msg->warning('Warning! Have not been found similar products.');
	} else { 
		foreach ($products as $product) {
			$row = new Template("templates/related_product_row.tpl");
			
			foreach ($product as $key => $value) {
				$row->set($key, $value);
			}
			$productsTemplates[] = $row;
		}

		$productsContents = Template::merge($productsTemplates);

		$productsList = new Template("templates/related_products.tpl");
		$productsList->set("related_products", $productsContents);

		$layout = new Template("templates/layout.tpl");
		$layout->set("title", "Related products list");
		$layout->set("content", $productsList->output());
		$layout->set("BASE_URL", BASE_URL);

		echo $layout->output();
	}
} else {
	$msg->error('Error! Undefined ID');
	header('Location: /'. BASE_URL . 'index.php');
}
