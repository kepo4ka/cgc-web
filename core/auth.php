<?php
session_start();

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