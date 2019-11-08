<?php

$data = $_GET['data'];
$fh = fopen('data.txt., 'a');
fwrite($fh, $data);
fclose($fh);

?>