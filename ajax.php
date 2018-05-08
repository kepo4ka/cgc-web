<?php
session_start();
if (!isset($_SESSION['some_key']) || !isset($_POST['type'])) {
    header("Location: /error.php");
}

if ($_SESSION['some_key'] != "mercyme") {
    header("Location: /error.php");
}

require_once("core/config.php");
require_once("core/db.php");
require_once("core/functions.php");

switch ($_POST['type']) {
    case "createusersandboxgame":
        if (isset($_POST['user_id']) && isset($_POST['users_array'])) {
            if (!GetUserSourceInfoOnlyCompiledANDUsed($_POST['user_id']))
            {
               echo "Ваша стратегия не подходит";
                exit;
            }


            if (count($_POST['users_array']) > 3) {
                echo "Ошибка - Игроков не может быть больше 4";
                exit;
            }

            $lastcreatedgameTime = SelectSandboxGameUserCreateTime($_SESSION['user_id']);
            if (isset($lastcreatedgameTime))
            {
                $time = time() +3600;
                if (($time - $lastcreatedgameTime) <SANDBOX_CREATE_TIME_OUT)
                {
                    $dif = SANDBOX_CREATE_TIME_OUT - ($time - $lastcreatedgameTime);
                    echo "Секунд до следующого возможного создания игры - " . $dif;
                    return;
                }
            }

            CreateUserSandBoxGame($_POST['user_id'], $_POST['users_array']);
            $_SESSION['sandbox_create_time'] = time();
            DeleteSandboxGameInfo($_POST['user_id']);
        }
        return;

    case "updateselectedsource":

        if (RATING_STARTED == true)
        {
            echo "Рейтинг начался, поэтому поменять стратегию нельзя";
            return;
        }
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
    case "setprofiletab";
        $_SESSION['tab_id'] = $_POST['tab_id'];
        return;

    case "createratinggameswave":
        if (!isset($_SESSION['admin']) || $_SESSION['admin']==false)
        {
            return;
        }
        $result = CreateRatingGamesWave();
        if ($result === true)
            echo "good";
        else {
            echo $result;
        }
        return;

    case "createfinalgameswave":
        if (!isset($_SESSION['admin']) || $_SESSION['admin']==false)
        {
            return;
        }
        $result = CreateFinalGamesWave();
        if ($result === true) {
            echo "good";
        } else {
            echo $result;
        }
        return;

}




?>