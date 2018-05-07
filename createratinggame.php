<?php


if (!isset($_GET["key"]) || $_GET['key'] != "csharp")
{
    header('HTTP/1.1 404 Not Found');
    header("Refresh:0; url=notExistPage.php");
}

require_once("core/config.php");
require_once("core/db.php");
require_once("core/functions.php");

CreateAllRatingGames();
CreateAllRatingGames();





?>