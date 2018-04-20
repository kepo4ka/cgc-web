<?php
session_start();
require_once("core/config.php");
require_once("core/db.php");
require_once("core/functions.php");


if (!isset($_SESSION['user_id'])) {
    header("Location: /unauth.php");
}

$user = getUser($_SESSION['user_id']);
if (!isset($user)) {
    header("Location: /unauth.php");
}

$users = getUsersForGameStart($_SESSION['user_id']);
$source_info = GetUserSourceInfo($_SESSION['user_id']);
$games_info = GetSandboxGameInfoByCreator($_SESSION['user_id']);
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
            <li class="mui--is-active"><a class="pointer" data-mui-toggle="tab" data-mui-controls="pane-default-1">Моя
                    стратегия</a>
            </li>
            <li><a class="pointer" data-mui-toggle="tab" data-mui-controls="pane-default-2">Создать игру</a></li>
            <li><a class="pointer" data-mui-toggle="tab" data-mui-controls="pane-default-3">История игр</a></li>
        </ul>

        <div class="mui-tabs__pane mui--is-active mui-panel" id="pane-default-1">
            <div class="mui-container-fluid source_info_div ">
                <table class="mui-table mui-table--bordered table_center uploaded_info_table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>ДАТА ОТПРАВКИ</th>
                        <th>СТАТУС КОМПИЛЯЦИИ</th>
                        <th>ИСХОДНЫЙ КОД</th>
                        <th>ОШИБКИ КОМПИЛЯЦИИ</th>
                        <th>ВЫБРАННАЯ СТРАТЕГИЯ</th>
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
                            <td>
                                <?= strtoupper($info['status']) ?>
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
                                    <label>

                                        <input type="radio"
                                               name="source_selected_radio"
                                               class="source_selected_radio"
                                            <?php if ($info['status']!='error') {
                                                if ($info['used'] == 1) {
                                                    echo "checked";
                                                }
                                            }
                                            else {
                                                echo "disabled";
                                            }


                                            ?>
                                        >
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

            <form action="profile.php" method="post" class="mui-form" enctype='multipart/form-data'>
                <input type="file" required name="source"/>
                <button type="submit" name="upload" class="mui-btn mui-btn--primary">Отправить</button>

            </form>
        </div>
        <div class="mui-tabs__pane mui-panel" id="pane-default-2">

            <div class="mui-container-fluid ">

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
                                <input type="checkbox" class="select_users_checkbox">
                            </td>
                        </tr>
                        <?php
                        $i++;
                    } ?>


                    </tbody>

                </table>
                <button type="submit" name="game_start" class="game_start_btn mui-btn mui-btn--accent"> Начать игру с
                    выбранными игроками
                </button>
            </div>

        </div>
        <div class="mui-tabs__pane mui-panel" id="pane-default-3">

            <div class="mui-container-fluid ">

                <table class="mui-table mui-table--bordered table_center users_info_table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>ID игры</th>
                        <th>Дата начала</th>
                        <th>Статус</th>
                        <th>Участники</th>
                        <th>Очки</th>
                        <th></th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php
                    $i = 1;
                    foreach ($games_info as $game) {
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
                            <td>
                                <?= $game['status'] ?>
                            </td>
                            <td>
                                <?php

                                foreach ($game['users'] as $game_user) { ?>

                                    <?= $game_user['name'] ?>
                                    <br>
                                    <?php
                                } ?>
                            </td>
                            <td></td>
                            <td>
                                <button type="button"  class="mui-btn mui-btn--small mui-btn--primary"> Просмотр (недоступно)
                                </button>

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
