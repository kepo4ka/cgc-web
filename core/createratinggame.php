<?php


if (!isset($_GET["key"]) || $_GET['key'] != "csharp")
{
    header('HTTP/1.1 404 Not Found');
    header("Refresh:0; url=notExistPage.php");
}

require_once ("config.php");
require_once ("db.php");
require_once ("functions.php");


$sources_array = GetALLUsersSourceInfoOnlyCompiledANDUsed();
if (!isset($sources_array) && $sources_array< 2)
{
    return;
}

$tempUsergroup = array();

for ($i=0;$i<count($sources_array);$i++)
{
    if (count($tempUsergroup)==4)
    {
        print_r(count($tempUsergroup));

      //  $tempGroupId = InsertUserGroup($tempUsergroup);
      //  CreateRatingGame($tempGroupId);
      //  $tempUsergroup = array();
    }
    elseif ($i==count($sources_array)-1 && count($tempUsergroup)>1)
    {

    }
    else {
        $tempUsergroup[] = $sources_array[$i];
    }

}