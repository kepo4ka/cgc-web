<?php
require_once("core/config.php");

session_start();

$_SESSION['JOPA'] = "mercyme";

require_once("core/db.php");
require_once("core/functions.php");

if (!isset($_SESSION['user_id'])) {
    header("Location: /unauth.php");
}

$user = getUser($_SESSION['user_id']);
if (!isset($user)) {
    header("Location: /unauth.php");
}

if (isset($_GET['gameid'])) {
    $path = SANDBOX_GAMES_PATH . "/" . $_GET['gameid'] . "/" . GAMESTATES_DAT_FILE_NAME;
    file_force_download($path);
    unset($_GET['gameid']);
    header("Location: /");
}

$uploadblock = false;
$sandboxgame_createblock = false;

$time = time() + 3600;
$lastuploadtime = SelectUserLastUploadTime($_SESSION['user_id']);
$lastcreatedgameTime = SelectSandboxGameUserCreateTime($_SESSION['user_id']);


if (($time - $lastuploadtime) < UPLOAD_TIME_OUT) {
    $_SESSION['upload_block'] = true;
} else {
    unset($_SESSION['upload_block']);
}

if (isset($_SESSION['upload_block']) && $_SESSION['upload_block'] == true) {
    $uploadblock = true;
}

if (($time - $lastcreatedgameTime) < SANDBOX_CREATE_TIME_OUT) {
    $_SESSION['sandbox_create_block'] = true;
} else {
    unset($_SESSION['sandbox_create_block']);
}

if (isset($_SESSION['sandbox_create_block']) && $_SESSION['sandbox_create_block'] == true) {
    $sandboxgame_createblock = true;
}

$tab1 = "";
$tab2 = "";
$tab3 = "";
$tab4 = "";

$active = "mui--is-active";

if (!isset($_SESSION['tab_id'])) {
    $_SESSION['tab_id'] = 1;
    $tab1 = $active;
}

switch ($_SESSION['tab_id']) {
    case 1:
        $tab1 = $active;
        break;
    case 2:
        $tab2 = $active;
        break;
    case 3:
        $tab3 = $active;
        break;
    case 4:
        $tab4 = $active;
        break;
    default:
        $tab1 = $active;
        $_SESSION['tab_id'] = 1;
        break;
}

DeleteSandboxGameInfo($_SESSION['user_id']);


$users = getUsersForGameStart($_SESSION['user_id']);
$source_info = GetUserSourceInfo($_SESSION['user_id']);
$my_games_info = GetSandboxGameInfoByCreator($_SESSION['user_id']);
$all_sandbox_games_info_by_userId = GetSandboxGamesInfoByUserId($_SESSION['user_id']);

?>


<!doctype html>
<html>
<?php

//InsertUserGroup();

//echo "<pre>";
//print_r($result);
//echo "</pre>";

require_once("core/upload.php");



require_once("core/head.php");
?>


<body>
<?php
require_once("core/header.php");
?>

<script>
    myUserId = <?=$_SESSION['user_id']?>;

</script>

<div id="content-wrapper" class=" mui-container-fluid">


    <div class="mui-container-fluid">

        <ul class="mui-tabs__bar flex_ul">
            <li class="<?= $tab1 ?>" data-id="1"><a class="pointer" data-mui-toggle="tab"
                                                    data-mui-controls="pane-default-1">
                    <i class="fa fa-user"></i>
                    Моя стратегия</a>
            </li>
            <li class="<?= $tab2 ?> tab2" data-id="2"><a class="pointer" data-id="1" data-mui-toggle="tab"
                                                         data-mui-controls="pane-default-2">
                    <i class="fa fa-plus-circle"></i>
                    Создать игру</a></li>
            <li class="<?= $tab3 ?> tab3" data-id="3"><a class="pointer" data-mui-toggle="tab"
                                                         data-mui-controls="pane-default-3">
                    <i class="fa fa-rocket"></i>
                    Созданные игры</a></li>
            <li class="<?= $tab4 ?> tab4" data-id="4"><a class="pointer" data-mui-toggle="tab"
                                                         data-mui-controls="pane-default-4">
                    <i class="fa fa-history"></i>
                    История всех игр</a></li>
        </ul>

        <div class="mui-tabs__pane mui-panel <?= $tab1 ?>" id="pane-default-1">

            <form action="profile.php?tab=1" method="post" class="mui-form" enctype='multipart/form-data'>
                <input type="file" required name="source" <?php if ($uploadblock) {
                    echo "disabled";
                } ?> />
                <button type="submit" name="upload" class="mui-btn mui-btn--primary btn-big-width" <?php if ($uploadblock) {
                    echo "disabled";
                } ?>>
                    <i class="fa fa-upload"></i>
                    Отправить
                </button>
            </form>
            <div class="mui-divider"></div>
            <div class="mui-container-fluid source_info_div">
                <div class="mui-container-fluid mui--text-title bold">
                    <?php if ($uploadblock) {
                        echo "Ограничение на отправку решений - " . UPLOAD_TIME_OUT . " секунд";
                    } ?>
                </div>
                <br>

                <table class="mui-table mui-table--bordered table_center uploaded_info_table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th> <i class="fa fa-clock-o"></i> ДАТА ОТПРАВКИ</th>
                        <th> <i class="fa fa-cogs"></i> СТАТУС КОМПИЛЯЦИИ</th>
                        <th> <i class="fa fa-code"></i> ИСХОДНЫЙ КОД</th>
                        <th> <i class="fa fa-exclamation-circle"></i> ОШИБКИ КОМПИЛЯЦИИ</th>
                        <th> <i class="fa fa-check"></i> ВЫБРАННАЯ СТРАТЕГИЯ</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php
                    $i = 1;
                    foreach ($source_info as $info) {
                        ?>
                        <tr>
                            <td class="display_none source_hide_id">
                               <?=$info['id'] ?>
                            </td>
                            <td class="source_visal_id">
                                <?= $i ?>
                            </td>
                            <td>
                                <?= date("d/m/Y H:i:s", $info['upload_time']) ?>
                            </td>
                            <td class="bold">
                                <span <?php
                                if ($info['status'] == 'ok') {
                                    echo "class='text_green'";
                                } elseif ($info['status'] == 'error') {
                                    echo "class='text_red'";
                                } else {
                                    echo "class='text_blue'";
                                } ?>
                                >
                                <?= strtoupper($info['status']) ?>
                                    </span>
                            </td>
                            <td class="source_info">
                                <a class="pointer open_hide_info">Просмотреть исходный код</a>
                                <div class="hidden_content">
                                    <?= $info['text'] ?>
                                </div>

                            </td>
                            <td>
                                <?php if ($info['error'] == "") {
                                    echo "Нет ошибок";
                                } else { ?>
                                    <a class="pointer open_hide_info">Просмотреть ошибки</a>
                                    <div class="hidden_content">
                                        <?= $info['error'] ?>
                                    </div>
                                    <?php
                                } ?>
                            </td>
                            <td>
                                <div class="mui-radio">
                                    <label class="radio_container">
                                        <input type="radio" class="source_selected_radio"
                                               name="radio" <?php if ($info['status'] == 'ok') {
                                            if ($info['used'] == 1) {
                                                echo "checked";
                                            }
                                        } else {
                                            echo "disabled";
                                        } ?> >
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </td>

                        </tr>
                        <?php
                        $i++;
                    } ?>

                    </tbody>
                </table>
            </div>
        </div>

        <div class="mui-tabs__pane mui-panel <?= $tab2 ?>" id="pane-default-2">

            <div class="mui-container-fluid">

                <table class="mui-table mui-table--bordered table_center users_info_table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>ID</th>
                        <th>Имя</th>
                        <th>Очки</th>
                        <th>Выбрать соперника</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php
                    $i = 1;
                    foreach ($users as $info) {
                        ?>
                        <tr>
                            <td>
                                <?= $i ?>
                            </td>
                            <td class="user_id">
                                <?= $info['id'] ?>
                            </td>

                            <td class="user_name">

                                <?= $info['name'] ?>

                            </td>
                            <td>
                                <?= $info['points'] ?>
                            </td>
                            <td>
<!--                               <input type="checkbox" class="select_users_checkbox">-->

                                <label class="checkbox_container">
                                    <input type="checkbox" class="select_users_checkbox">
                                    <span class="checkmark"></span>
                                </label>
                            </td>
                        </tr>
                        <?php
                        $i++;
                    } ?>
                    </tbody>
                </table>

            </div>
            <button type="submit" name="game_start" class="game_start_btn mui-btn mui-btn--accent btn-big-width" <?php
            if ($sandboxgame_createblock == true) {
                echo "disabled";
            }
            ?>> Начать игру с
                выбранными игроками
            </button>
            <br>
            <div class="mui-container-fluid mui--text-title bold help_text_info"><i
                    class="fa fa fa-exclamation-circle"></i> Ограничение на создание
                пользовательских игр - <?= SANDBOX_CREATE_TIME_OUT ?> секунд
            </div>

            <br>

            <div class="mui-container-fluid mui--text-title bold help_text_info"><i
                    class="fa fa fa-exclamation-circle"></i> Ограничение на создание игр
                - <?= SANDBOX_GAMES_MAX_COUNT ?> (старые игры будут удаляться)
            </div>

       
        </div>
        <div class="mui-tabs__pane mui-panel <?= $tab3 ?>" id="pane-default-3">

            <div class="mui-container-fluid ">
                <a href="<?=$_SERVER['REQUEST_URI']?>" class="right">
                    <button type="button" class="mui-btn mui-btn--raised">Обновить
                    </button>
                </a>

                <table class="mui-table mui-table--bordered table_center users_info_table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>ID</th>
                        <th> <i class="fa fa-clock-o"></i> Дата начала</th>
                        <th> <i class="fa fa-cogs"></i> Статус</th>
                        <th> <i class="fa fa-users"></i> Участники</th>
                        <th> <i class="fa fa-trophy"></i> Результат</th>
                        <th> <i class="fa fa-exclamation-circle"></i> Ошибки</th>
                        <th> <i class="fa fa-eye"></i> Визуализация</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php
                    $i = 1;
                    foreach ($my_games_info as $game) {

                        $game['result'] = json_decode($game['result'], true);

                        ?>
                        <tr>
                            <td>
                                <?= $i ?>
                            </td>
                            <td class="user_id">
                                <?= $game['id'] ?>
                            </td>

                            <td>

                                <?= date("d/m/Y H:i:s", $game['datetime']) ?>

                            </td>
                            <td class="bold">
                                <span
                                <?php
                                if ($game['status'] == 'ok') {
                                    echo " class='text_green'>";
                                    echo "Проверено";

                                } elseif ($game['status'] == 'error') {
                                    echo " class='text_red'>";
                                    echo "Ошибка во время проверки";
                                } elseif ($game['status'] == 'work') {
                                    echo " class='text_blue'>";
                                    echo "Выполняется";
                                } else {
                                    echo ">";
                                    echo "В очереди";
                                }
                                ?>
                                </span>
                            </td>
                            <td>
                                <?php

                                foreach ($game['users'] as $game_user) { ?>

                                    <?= $game_user['name'] ?>
                                    <br>
                                    <?php
                                } ?>
                            </td>
                            <td>

                                <?php
                                if ($game['result'] != "") {
                                    foreach ($game['result'] as $result) {
                                        echo $result['Name'] . " - " . $result['Points'] . "<br>";
                                    }
                                }
                                ?>
                            </td>

                            <td>
                                <?php
                                if ($game['errors'] != "") {
                                    ?>
                                    <a class="pointer open_hide_info">Ошибки</a>
                                    <div class="hidden_content">
                                        <?= $game['errors'] ?>
                                    </div>
                                    <?php
                                } ?>
                            </td>
                            <td>
                                <?php if ($game['status'] == 'ok') { ?>
                                    <a href="?gameid=<?= $game['id'] ?>" dataid="<?= $game['id'] ?>"
                                       class="download_visualize_info_btn">
                                        <button type="button" class="mui-btn mui-btn--small mui-btn--primary">Скачать
                                        </button>
                                    </a>

                                <?php } ?>
                            </td>
                        </tr>
                        <?php
                        $i++;
                    } ?>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="mui-tabs__pane mui-panel <?= $tab4 ?>" id="pane-default-4">
            <div class="mui-container-fluid ">
                <a href="<?=$_SERVER['REQUEST_URI']?>" class="right">
                    <button type="button" class="mui-btn mui-btn--raised">Обновить
                    </button>
                </a>

                <table class="mui-table mui-table--bordered table_center users_info_table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>ID</th>
                        <th><i class="fa fa-clock-o"></i> Дата начала</th>
                        <th><i class="fa fa-cogs"></i> Статус</th>
                        <th><i class="fa fa-users"></i> Участники</th>
                        <th><i class="fa fa-trophy"></i> Результат</th>
                        <th><i class="fa fa-exclamation-circle"></i> Ошибки</th>
                        <th><i class="fa fa-eye"></i> Визуализация</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php
                    $i = 1;
                    foreach ($all_sandbox_games_info_by_userId as $game) {

                        $game['result'] = json_decode($game['result'], true);

                        ?>
                        <tr>
                            <td>
                                <?= $i ?>
                            </td>
                            <td class="user_id">
                                <?= $game['id'] ?>
                            </td>

                            <td>

                                <?= date("d/m/Y H:i:s", $game['datetime']) ?>

                            </td>
                            <td class="bold">
                                <span
                                <?php
                                if ($game['status'] == 'ok') {
                                    echo " class='text_green'>";
                                    echo "Проверено";

                                } elseif ($game['status'] == 'error') {
                                    echo " class='text_red'>";
                                    echo "Ошибка во время проверки";
                                } elseif ($game['status'] == 'work') {
                                    echo " class='text_blue'>";
                                    echo "Выполняется";
                                } else {
                                    echo ">";
                                    echo "В очереди";
                                }
                                ?>
                                </span>
                            </td>
                            <td>
                                <?php

                                foreach ($game['users'] as $game_user) { ?>

                                    <?= $game_user['name'] ?>
                                    <br>
                                    <?php
                                } ?>
                            </td>
                            <td>

                                <?php
                                if ($game['result'] != "") {
                                    foreach ($game['result'] as $result) {
                                        echo $result['Name'] . " - " . $result['Points'] . "<br>";
                                    }
                                }
                                ?>
                            </td>

                            <td>
                                <?php
                                if ($game['errors'] != "") {
                                    ?>
                                    <a class="pointer open_hide_info">Ошибки</a>
                                    <div class="hidden_content">
                                        <?= $game['errors'] ?>
                                    </div>
                                    <?php
                                } ?>
                            </td>
                            <td>
                                <?php if ($game['status'] == 'ok') { ?>
                                    <a href="?gameid=<?= $game['id'] ?>" dataid="<?= $game['id'] ?>"
                                       class="download_visualize_info_btn">
                                        <button type="button" class="mui-btn mui-btn--small mui-btn--primary">Скачать
                                        </button>
                                    </a>

                                <?php } ?>
                            </td>
                        </tr>
                        <?php
                        $i++;
                    } ?>
                    </tbody>
                </table>
            </div>
        </div>


    </div>

</div>

<?php
require_once("core/footer.php");
?>

<script>
    new WOW().init();
</script>
</body>
</html>
