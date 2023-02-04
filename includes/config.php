<?php
define('DB_SERVER','metadatabase.mysql.polardb.ap-south-1.rds.aliyuncs.com:3306');
define('DB_USER','metadaters');
define('DB_PASS' ,'meta@12345');
define('DB_NAME', 'metadaters');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>