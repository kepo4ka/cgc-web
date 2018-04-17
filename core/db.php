<?php


$link = Connect();

function Connect()
{
    $link = new mysqli('127.0.0.1', 'root', '', 'test');

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
    $sql = "SELECT name, is_bot FROM users";
    $users_array = array();

    if ($stmt = mysqli_prepare($link, $sql)) {

        /* bind parameters for markers */
        // mysqli_stmt_bind_param($stmt, "i", "1");

        /* execute query */
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
        $num_of_rows = $stmt->num_rows;

        /* bind result variables */
        mysqli_stmt_bind_result($stmt, $district, $is_bot);

        /* fetch value */
        while (mysqli_stmt_fetch($stmt)) {
            $users_array[] = $district;
        }

        /* close statement */
        mysqli_stmt_close($stmt);
        return $users_array;
    }
}


function getUser($user_id)
{
    global $link;
    $sql = "SELECT name, is_bot FROM users WHERE user_id = ?";

    if ($stmt = mysqli_prepare($link, $sql)) {

        mysqli_stmt_bind_param($stmt, "i", $user_id);

        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
        $num_of_rows = $stmt->num_rows;

        mysqli_stmt_bind_result($stmt, $district, $is_bot);

        mysqli_stmt_fetch($stmt);


        mysqli_stmt_close($stmt);

        return $district;
    }
}


function ChangeSourceFileInfo($user_id, $path)
{
    global $link;
    $sql = "SELECT user_id FROM sources WHERE user_id=?";
    $userName = $user_id;
   ;
    if (!$stmt = $link->prepare($sql)) {
        die(mysqli_error($link));
    }

  //  mysqli_stmt_bind_param($stmt, "i", $user_id);
    $stmt->bind_param("i",$user_id);
    
    $stmt->bind_result($userName);
    $stmt->execute();
    $stmt->store_result();
    $stmt->fetch();
    $num_of_rows = $stmt->num_rows;
    $stmt->free_result();
    $stmt->close();

    if ($num_of_rows < 1) {
        if (InsertSourceFileInfo($user_id, $path)) {
            echo "Вставлена информация о пути исходников для пользователя " . $userName;
        } else {
            echo "Не удалось встатвить информацию о исходниках";
        }
    } else {
        if (UpdateSourceFileInfo($user_id, $path)) {
            return "Обновлена информация об исходниках";
        } else {
            return "Не обновлена информация о исходниках";
        }
    }


}

function InsertSourceFileInfo($user_id, $path)
{
    global $link;

    $sql = "INSERT INTO sources (id, source_path, exe_path, user_id, status) VALUES ('', ?, '', ?, 'wait')";

    if ($stmt = $link->prepare($sql)) {

        /* bind parameters for markers */
        $stmt->bind_param("si", $path, $user_id);
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

function UpdateSourceFileInfo($user_id, $path)
{
    global $link;

    $sql = "UPDATE sources SET source_path = ?, exe_path=NULL, status='wait' WHERE user_id= ?)";

    if ($stmt = $link->prepare($sql)) {

        /* bind parameters for markers */
        mysqli_stmt_bind_param($stmt, "si", $path, $user_id);
        $stmt->bind_param("si", $path, $user_id);

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


?>


