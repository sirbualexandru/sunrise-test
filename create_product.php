<?php

require('core.php');

if ($_POST) {
	// create product
	$db->insert('products', $_POST);
	$insertProduct = $db->getResult();  

	// create history row
	$data = array(
			'product_id' => $insertProduct[0],
			'event'		 => 'Created',
			'title'		 => $_POST['title'],
			'price'		 => $_POST['price'],
			'quantity'	 => $_POST['quantity']
		);
	$db->insert('product_history', $data);

	$msg->success('Success! Product created with success!');
	header('Location: /'. BASE_URL . 'index.php');
} else {
	$db->select('categories', '*' , NULL, NULL, 'id DESC');
	$categories = $db->getResult();
	
	if (empty($categories)) {
		$msg->warning('Warning! No categories found!');
		header('Location: /'. BASE_URL . 'index.php');
	} else {
		foreach ($categories as $category) {
			$row = new Template("templates/category_option.tpl");
			
			foreach ($category as $key => $value) {
				$row->set($key, $value);
			}
			$categoriesTemplates[] = $row;
		}

		$categoriesContents = Template::merge($categoriesTemplates);

		$form = new Template("templates/create_product.tpl");
		$form->set("categories", $categoriesContents);

		$layout = new Template("templates/layout.tpl");
		$layout->set("title", "Product Accounting System");
		$layout->set("content", $form->output());
		$layout->set("BASE_URL", BASE_URL);

		echo $layout->output();
	}
}