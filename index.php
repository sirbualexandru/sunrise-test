<?php

require('core.php');

// Total Price
$db->select('products', 'SUM(products.price * products.quantity) as totalPrice', NULL, NULL, NULL);
$totalPrice = $db->getResult();
$totalPrice = $totalPrice[0]['totalPrice'];

$percOfTotalPrice = 'ROUND(((products.price * products.quantity) / '. $totalPrice. ') * 100, 2) AS percOfTotalPrice';

$db->select(
		'products',
		'products.id,products.title,products.price,products.quantity,categories.name AS category,'. $percOfTotalPrice,
		'categories ON products.category_id = categories.id', // JOIN
		NULL, // WHERE conditions
		'products.id DESC' // ORDER BY conditions
	);

$products = $db->getResult();

foreach ($products as $product) {
	$row = new Template("templates/product_row.tpl");
	
	foreach ($product as $key => $value) {
		$row->set($key, $value);
	}
	$productsTemplates[] = $row;
}

// Merges all our products' templates into a single variable. This will allow us to use it in the main template.
$productsContents = Template::merge($productsTemplates);

// Defines the main template and sets the products' content.
$productsList = new Template("templates/list_products.tpl");
$productsList->set("products", $productsContents);


// Loads our layout template, settings its title and content.
$layout = new Template("templates/layout.tpl");
$layout->set("title", "Product Accounting System");
$layout->set("content", $productsList->output());
$layout->set("BASE_URL", BASE_URL);

echo $layout->output();

?>