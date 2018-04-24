<?php
session_start();
if (!isset($_SESSION['JOPA']) || !isset($_POST['type'])) {
    header("Location: /error.php");
}

if ($_SESSION['JOPA'] != "mercyme") {
    header("Location: /error.php");
}

require_once("core/config.php");
require_once("core/db.php");
require_once("core/functions.php");

switch ($_POST['type']) {
    case "createusersandboxgame":
        if (isset($_POST['user_id']) && isset($_POST['users_array'])) {
            CreateUserSandBoxGame($_POST['user_id'], $_POST['users_array']);
            $_SESSION['sandbox_create_time'] = time();
            DeleteSandboxGameInfo($_POST['user_id']);
        }
        return;

    case "updateselectedsource":

        if (isset($_POST['source_id']) && isset($_POST['user_id'])) {

            $res = UpdateUnselectAnotherSources($_POST['user_id'], $_POST['source_id']);
            if ($res === "errorstatus") {
                echo $res;
            } elseif ($res === true) {
                echo "good";
            } else {
                echo "error";
            }
        }
    return;
}




?>