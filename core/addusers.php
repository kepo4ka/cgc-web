<?php
/**
 * Created by PhpStorm.
 * User: Galaxy
 * Date: 04.05.2018
 * Time: 9:02
 */

if (!isset($_POST['users']))
{
    exit;
}

require_once ("config.php");
require_once ("db.php");

$userssplit = explode(PHP_EOL, $_POST['users']);

$users = array();

foreach ($userssplit as $str)
{
    $linesplit = explode(" ", $str);
    $user = array();
    $user['name'] = $linesplit[0];
    $user['login']=$linesplit[1];
    $user['password'] = $linesplit[2];

    $users[] = $user;
    unset($user);
}

$count = InsertUsers($users);


if ($count>0)
{
    echo "Добавлено " . $count . " юзеров";
}
else {
    echo "не удалось добавить юзеров";
}