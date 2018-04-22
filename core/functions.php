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
    $good_users_info = array();

    foreach ($good_users as $user)
    {
        if ($info = GetUserSourceInfoOnlyCompiledANDUsed($user))
        {
            $good_users_info[] = $info;
        }
    }

    if (!$group_id = InsertUserGroup($good_users)) {

        echo "Не удалось создать группу пользователей";
        return;
    }

    $last_id = InsertGameINFOSandbox($group_id, $user_id);
    if ($last_id < 0) {
        echo "InsertGameINFOSandbox last_id seterror";
        return;
    }

    GameSandboxFilesProccess($good_users_info, $last_id);
    
    echo "good " . $last_id;
}

function GameSandboxFilesProccess($good_users_info, $last_id)
{
    $game_dir = SANDBOX_GAMES_PATH . "/" . $last_id;

    if (!is_dir($game_dir)) {
        mkdir($game_dir);
    }

    foreach ($good_users_info as $user_source) {

        $temp_user_dir = $game_dir . "/" . $user_source[0]['user_id'];
        $temp_user_destination = $temp_user_dir . "/" . EXE_FILE_NAME;
        $origin_user_destination = SOURCE_PATH . "/" . $user_source[0]['id'] . "/" . EXE_FILE_NAME;

        if (!is_dir($temp_user_dir)) {
            mkdir($temp_user_dir);
        }

        if (!copy($origin_user_destination, $temp_user_destination)) {

            print_r($origin_user_destination);
            print_r($temp_user_destination);
            echo "НЕ УДАЛОСЬ СКОПИРОВАТЬ ФАЙЛ ПОЛЬЗОВАТЕЛЯ c ID " . $user_source[0]['user_id'];
            return;
        }
    }
}

function file_force_download($file) {
    if (file_exists($file)) {
        // сбрасываем буфер вывода PHP, чтобы избежать переполнения памяти выделенной под скрипт
        // если этого не сделать файл будет читаться в память полностью!
        if (ob_get_level()) {
            ob_end_clean();
        }
        // заставляем браузер показать окно сохранения файла
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=' . basename($file));
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($file));
        // читаем файл и отправляем его пользователю
        readfile($file);
        exit;
    }
}

?>