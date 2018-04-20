<?php


function auth($login, $pass)
{
    if (empty($login) || empty($pass) || !isset($login) || !isset($pass)) {
        return false;
    }

    $userinfo = dbChecklogin($login, $pass);


    if ($userinfo) {
        $_SESSION['user_id'] = $userinfo[0];
        $_SESSION['name'] = $userinfo[1];

        header("Location: /profile.php");
    } else {
        header("Location: /unauth.php?auth_error");
    }
}


function logout($user_id)
{
    if (isset($_SESSION['user_id'])) {
        unset($_SESSION['user_id']);
    }
    session_destroy();

    header("Location: /");
}


function CreateUserSandBoxGame($user_id, $users_array)
{

    $good_users = array();

    foreach ($users_array as $user) {

        $info = GetUserSourceInfoOnlyCompiledANDUsed($user);

        if ($info === false) {
            echo "Пользователь #" . $user . " не подходит";
            continue;
        }
        $good_users[] = $user;
    }

    $myinfo = GetUserSourceInfoOnlyCompiledANDUsed($_POST['user_id']);
    if ($myinfo === false) {
        echo "Моя выбранная стратегия не подходит. Возможно она не скомпилирована";
        return;
    }

    $good_users[] = $user_id;

    if (!$group_id = InsertUserGroup($good_users)) {

        echo "Не удалось создать группу пользователей";
        return;
    }

    $last_id = InsertGameINFOSandbox($group_id, $user_id);
    if ($last_id < 0) {
        echo "InsertGameINFOSandbox last_id seterror";
        return;
    }

    GameSandboxFilesProccess($good_users, $last_id);
    
    echo "good " . $last_id;
}

function GameSandboxFilesProccess($users_array, $last_id)
{
    $game_dir = "../" . SANDBOX_GAMES_PATH . "/" . $last_id;

    if (!is_dir($game_dir)) {
        mkdir($game_dir);
    }

    foreach ($users_array as $user) {
        $temp_user_info = GetUserSourceInfoOnlyCompiledANDUsed($user);
        $temp_user_dir = $game_dir . "/" . $user;
        $temp_user_destination = $temp_user_dir . "/" . EXE_FILE_NAME;
        $origin_user_destination = "../" . SOURCE_PATH . "/" . $temp_user_info[0]['id'] . "/" . EXE_FILE_NAME;

        if (!is_dir($temp_user_dir)) {
            mkdir($temp_user_dir);
        }

        if (!copy($origin_user_destination, $temp_user_destination)) {
            echo "НЕ УДАЛОСЬ СКОПИРОВАТЬ ФАЙЛ ПОЛЬЗОВАТЕЛЯ" . $user;
            return;
        }
    }
}


?>