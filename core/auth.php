<?php
session_start();
if (!defined("CGC"))
{
    header('HTTP/1.1 404 Not Found');
    header("Refresh:0; url=notExistPage.php");
}



require_once ("config.php");
require_once ("db.php");
require_once ("functions.php");

if (isset($_GET['logout']) && isset($_SESSION['user_id']))
{
    logout($_SESSION['user_id']);
}

if (isset($_POST['auth']))
{
    if (!isset($_POST['login']) || !isset($_POST['password']))
    {
        echo "Поля должны быть не пустые";
    }

    auth($_POST['login'], $_POST['password']);
}

?>