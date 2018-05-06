<?php
/**
 * Created by PhpStorm.
 * User: Galaxy
 * Date: 06.05.2018
 * Time: 14:04
 */

if (!isset($_GET['JOPA']))
{
    exit;
}
require_once ("config.php");
require_once ("functions.php");


echo getLastUserFilesGithub()->tag_name;
echo " ";
echo getLastUserFilesGithub()->html_url;
