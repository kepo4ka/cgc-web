<?php


$link = Connect();

function Connect()
{
    $link = new mysqli('127.0.0.1', 'root', '', 'test');
    $link->set_charset("UTF8");

    /* Проверка соединения */
    if (mysqli_connect_errno()) {
        printf("Подключение невозможно: %s\n", mysqli_connect_error());
        exit();
    }
    return $link;
}


function CloseDB($link)
{
    $link = new mysqli('127.0.0.1', 'root', '', 'test');

    /* Проверка соединения */
    if (mysqli_connect_errno()) {
        printf("Подключение невозможно: %s\n", mysqli_connect_error());
        exit();
    }
    mysqli_close($link);
}


function getUsers()
{
    global $link;
    $sql = "SELECT users.id, users.points, users.name FROM users, sources WHERE users.id = sources.user_id AND sources.status='ok' ORDER BY points DESC";
    $users_array = array();

    if ($stmt = mysqli_prepare($link, $sql)) {

        /* bind parameters for markers */
        // mysqli_stmt_bind_param($stmt, "i", "1");

        /* execute query */
        $stmt->execute();

        /* bind result variables */
        $res = $stmt->get_result();

        /* fetch value */
        while ($row = $res->fetch_assoc()) {
            $users_array[] = $row;
        }

        /* close statement */
        mysqli_stmt_close($stmt);
        return $users_array;
    }
}


function getUsersForGameStart($user_id)
{
    global $link;
    $sql = "SELECT users.id, users.points, users.name FROM users, sources WHERE users.id = sources.user_id AND users.id <> ? AND sources.status='ok' AND sources.used=1 ORDER BY points DESC";
    $users_array = array();

    if ($stmt = mysqli_prepare($link, $sql)) {

        /* bind parameters for markers */
        //   mysqli_stmt_bind_param($stmt, "i", "1");

        $stmt->bind_param("i", $user_id);
        /* execute query */
        $stmt->execute();

        /* bind result variables */
        $res = $stmt->get_result();

        /* fetch value */
        while ($row = $res->fetch_assoc()) {
            $users_array[] = $row;
        }

        /* close statement */
        mysqli_stmt_close($stmt);
        return $users_array;
    }
}


function getUser($user_id)
{
    global $link;
    $sql = "SELECT name, is_bot FROM users WHERE id = ?";

    if ($stmt = mysqli_prepare($link, $sql)) {

        $stmt->bind_param("i", $user_id);

        $stmt->execute();
        $stmt->store_result();
        mysqli_stmt_store_result($stmt);

        $stmt->bind_result($district, $is_bot);

        $stmt->fetch();

        mysqli_stmt_close($stmt);        
        return $district;
    }
}


//
//function ChangeSourceFileInfo($user_id, $verstion, $text)
//{
//    global $link;
//    $sql = "SELECT user_id FROM sources WHERE user_id=?";
//
//    if (!$stmt = $link->prepare($sql)) {
//        die(mysqli_error($link));
//    }
//
//  //  mysqli_stmt_bind_param($stmt, "i", $user_id);
//    $stmt->bind_param("i",$user_id);
//    $stmt->execute();
//    $stmt->store_result();
//    $stmt->fetch();
//    $num_of_rows = $stmt->num_rows;
//    $stmt->free_result();
//    $stmt->close();
//
//    InsertSourceFileInfo($user_id, $text);
//
////    if ($num_of_rows < 1) {
////        echo "num_of_rows < 1";
////        if (InsertSourceFileInfo($user_id, $text)) {
////            echo "Вставлена информация о пути исходников для пользователя " . $user_id;
////        } else {
////            echo "Не удалось встатвить информацию о исходниках";
////        }
////    } else {
////        echo "num_of_rows > 1";
////        if (UpdateSourceFileInfo($user_id, $text)) {
////            echo "Обновлена информация об исходниках";
////        } else {
////            echo "Не обновлена информация о исходниках";
////        }
////    }
//
//
//}


function GetLastSourceID()
{
    global $link;

    $sql = "SELECT id FROM sources ORDER BY id DESC";
    $id = 0;

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        //  $stmt->bind_param("i", $user_id);
        $stmt->bind_result($id);
        $stmt->execute();
        $stmt->store_result();
        $stmt->fetch();
        $stmt->free_result();
        $stmt->close();
    }
    return $id;
}


function UpdateUnselectAnotherSources($user_id, $source_id = 0)
{
    global $link;
    $sql = "UPDATE sources SET used = 0 WHERE user_id=?";

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("i", $user_id);

        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
        mysqli_stmt_close($stmt);
    }

    if ($source_id > 0) {
        $sql = "UPDATE sources SET used = 1 WHERE id=? AND status <> 'error'";

        if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {
            $stmt->bind_param("i", $source_id);
            $stmt->execute();
            $stmt->store_result();

            $affected_rows = $stmt->affected_rows;
            $stmt->close();
            if ($affected_rows < 1) {
                return "errorstatus";
            }
        }
    }
    return true;
}


function InsertSourceFileInfo($user_id, $text)
{
    UpdateUnselectAnotherSources($user_id);

    global $link;

    $sql = "INSERT INTO sources (id, user_id, text, status, used, upload_time) VALUES ('', ?, ?, 'wait', 1, ?)";

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $time = time();
        $stmt->bind_param("isi", $user_id, $text, $time);
        $stmt->execute();
        $stmt->store_result();
        $affec_rows = $stmt->affected_rows;
        $stmt->free_result();
        $stmt->close();
        if ($affec_rows > 0) {
            return true;
        }
    }
    return false;
}

function UpdateSourceFileInfo($user_id, $text)
{
    global $link;

    $sql = "UPDATE sources SET text = ?, status='wait', error='' WHERE user_id=?";

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("si", $text, $user_id);

        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
        $affec_rows = $stmt->affected_rows;

        mysqli_stmt_close($stmt);
        if ($affec_rows > 0) {
            return true;
        }
    }
    return false;
}


function GetUserSourceInfo($user_id)
{
    global $link;

    $sql = "SELECT * FROM sources WHERE user_id=? ORDER BY id";
    $result = array();

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("i", $user_id);

        mysqli_stmt_execute($stmt);

        $res = $stmt->get_result();
        while ($row = $res->fetch_assoc()) {
            $result[] = $row;
        }
        mysqli_stmt_close($stmt);
    }
    return $result;
}


function GetUserSourceInfoOnlyCompiledANDUsed($user_id)
{
    global $link;

    $sql = "SELECT * FROM sources WHERE user_id=? AND status='ok' AND used=1";

    $result = array();

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("i", $user_id);

        $stmt->execute();
        $res = $stmt->get_result();

        while ($row = $res->fetch_assoc()) {
            $result[] = $row;
        }
        mysqli_stmt_close($stmt);
    }
    return $result;
}


function GetSandboxGameInfoByCreator($user_id)
{
    global $link;

    $sql = "SELECT * FROM sandbox_game_session WHERE creator=?";

    $result = array();

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("i", $user_id);

        $stmt->execute();
        $res = $stmt->get_result();

        while ($row = $res->fetch_assoc()) {
    
            $row['users'] = GetUsersInGroup($row['users_group']);
            $result[] = $row;
        }
        mysqli_stmt_close($stmt);
    }
    return $result;
}


function GetUsersInGroup($group_id)
{
    global $link;

    $sql = "SELECT user_id, name FROM users_group, users WHERE users_group.user_id=users.id AND group_id=?";

    $result = array();

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("i", $group_id);

        $stmt->execute();
        $res = $stmt->get_result();

        while ($row = $res->fetch_assoc()) {
            $result[] = $row;
        }
        mysqli_stmt_close($stmt);
    }
    return $result;
}




function dbChecklogin($login, $password)
{
    global $link;
    $result = array();
    $sql = "SELECT id, name FROM users WHERE login = ? AND password = ?";
    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("ss", $login, $password);

        $stmt->bind_result($result[0], $result[1]);

        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows() > 0) {

            $stmt->fetch();
            mysqli_stmt_close($stmt);

            return $result;
        }
    }
    return false;
}


function SelectSandboxGameInfo($user_id)
{
    global $link;

    $sql = "SELECT datetime FROM sandbox_game_session WHERE creator= ? ORDER BY datetime DESC";
    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->bind_param("i", $user_id);

        $stmt->bind_result($last_create_time);

        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows() > 0) {

            $stmt->fetch();
            mysqli_stmt_close($stmt);

            return $last_create_time;


        }
    }
    return -1;
}


function InsertGameINFOSandbox($group_id, $user_id)
{
    global $link;

    $sql = "INSERT INTO sandbox_game_session (datetime, users_group, status, creator) VALUES (?,?, 'wait', ?)";
    $last_id = -1;
    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {
        $time = time();
        $stmt->bind_param("iii", $time, $group_id, $user_id);
        $stmt->execute();
        $stmt->store_result();
        $last_id = $stmt->insert_id;
        
        if ($stmt->affected_rows<1)
        {
            return false;
        }
        $stmt->free_result();
        $stmt->close();
    }
    return $last_id;
}


function InsertUserGroup($users_array)
{
    global $link;

    $sql = "SELECT group_id FROM users_group ORDER BY group_id DESC LIMIT 1";
    $group_id = 0;

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {

        /* bind parameters for markers */
        $stmt->execute();
        $res = $stmt->get_result();
        $group_id = $res->fetch_assoc()['group_id'];
        $stmt->free_result();
        $stmt->close();
    }

    $group_id++;

    $sql = "INSERT INTO users_group (group_id, user_id) VALUES (?,?)";

    if ($stmt = $link->prepare($sql) or die(mysqli_error($link))) {
        foreach ($users_array as $user) {
            $stmt->bind_param("ii", $group_id, $user);
            $stmt->execute();
        }
        unset($user);
        $stmt->free_result();
        $stmt->close();
    }
    return $group_id;

}

?>


