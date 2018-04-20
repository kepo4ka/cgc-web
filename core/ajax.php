<?php

if (!isset($_POST['user_id']) || (!isset($_POST['users_array']) && !isset($_POST['source_id'])))
{
    echo "bad";
    return;
}


require_once ("config.php");
require_once ("db.php");
require_once ("functions.php");


if (isset($_POST['user_id']) && isset($_POST['users_array'])) {

//    $last_create_time = SelectSandboxGameInfo($user['user_id']);
//    if ($last_create_time > 0) {
//        $dif = $now - $last_create_time;
//        if ($dif < 360) {
//            echo "Секунд до следующей загрузки: " . $dif;
//            return;
//        }
//    }

    CreateUserSandBoxGame ($_POST['user_id'], $_POST['users_array']);




    $now = time();



}
elseif (isset($_POST['source_id']) && isset($_POST['user_id']))
{

   $res =UpdateUnselectAnotherSources($_POST['user_id'], $_POST['source_id']);
    if ($res==="errorstatus")
    {
        echo $res;
    }
    elseif ($res===true)
    {
        echo "good";
    }
    else {
        echo "error";
    }
    
}



?>