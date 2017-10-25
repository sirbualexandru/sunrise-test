<?php

require('core.php');

// Template
$helpTemplate = new Template("templates/help.tpl");

$layout = new Template("templates/layout.tpl");
$layout->set("title", "Help page");
$layout->set("content", $helpTemplate->output());
$layout->set("BASE_URL", BASE_URL);

echo $layout->output();
?>