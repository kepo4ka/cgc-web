<?php

// header("Location: error.php");
// exit;


require_once("core/config.php");

session_start();

require_once("core/db.php");
require_once("core/functions.php");


if (isset($_GET['gameid']) && isset($_GET['type'])) {
    if ($_GET['game_type'] == 1) {
        if ($_GET['type'] == 1) {
            $path = RATING_GAMES_PATH . "/" . $_GET['gameid'] . "/" . GAMESTATES_COMPRESSED_JSON_FILE_NAME;
            file_force_download($path);
        }
        if ($_GET['type'] == 2) {
            $path = RATING_GAMES_PATH . "/" . $_GET['gameid'] . "/" . GAMESTATES_COMMANDS_UNITY;
            file_force_download($path);
        }
    } else {
        if ($_GET['type'] == 1) {
            $path = FINAL_GAMES_PATH . "/" . $_GET['gameid'] . "/" . GAMESTATES_COMPRESSED_JSON_FILE_NAME;
            file_force_download($path);
        }
        if ($_GET['type'] == 2) {
            $path = RATING_GAMES_PATH . "/" . $_GET['gameid'] . "/" . GAMESTATES_COMMANDS_UNITY;
            file_force_download($path);
        }
    }

    unset($_GET['gameid']);
    unset($_GET['type']);
    header("Location: /");
}


//$games_info = GetALLSandboxGames();

$rating_games_info = GetGames(RATING_GAMES_PATH);
$final_games_info = GetGames(FINAL_GAMES_PATH);
?>


<!doctype html>
<html>
<?php
require_once("core/head.php");
?>


<body>
<?php
require_once("core/header.php");
?>


<div id="content-wrapper" class=" mui-container-fluid">
    <div class="mui-container-fluid">

        <ul class="mui-tabs__bar flex_ul">
            <li class="tab1 mui--is-active" data-id="1"><a class="pointer" data-mui-toggle="tab"
                                                           data-mui-controls="pane-default-1">
                    <i class="fa fa-users"></i>
                    Рейтинговые игры</a>
            </li>
<!--            <li class="tab2" data-id="2"><a class="pointer" data-id="2" data-mui-toggle="tab"-->
<!--                                            data-mui-controls="pane-default-2">-->
<!--                    <i class="fa fa-trophy"></i>-->
<!--                    Финальные игры</a>-->
<!--            </li>-->

        </ul>


        <div class="mui-tabs__pane mui-panel mui--is-active" id="pane-default-1">
            <div class="mui-container-fluid">
            <table class="mui-table mui-table--bordered table_center users_info_table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th><i class="fa fa-clock-o"></i> Дата начала</th>
                    <th><i class="fa fa-cogs"></i> Статус</th>
                    <th><i class="fa fa-users"></i> Участники</th>
                    <th><i class="fa fa-trophy"></i> Результат</th>
                    <th><i class="fa fa-eye"></i> Визуализация</th>
                </tr>
                </thead>

                <tbody>
                <?php
                $i = 1;
                if (isset($rating_games_info)) {
                    foreach ($rating_games_info as $game) {

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
                                <?php if ($game['status'] == 'ok') { ?>
                                    <a href="?gameid=<?= $game['id'] ?>&type=1&game_type=1" dataid="<?= $game['id'] ?>"
                                       class="download_visualize_info_btn">
                                        <button type="button" class="mui-btn mui-btn--small mui-btn--primary">Отладчик
                                        </button>
                                    </a>
                                    <a href="?gameid=<?= $game['id'] ?>&type=2&game_type=1" dataid="<?= $game['id'] ?>"
                                       class="download_visualize_info_btn">
                                        <button type="button" class="mui-btn mui-btn--small mui-btn--primary">
                                            Визуализатор
                                        </button>
                                    </a>
                                <?php } ?>
                            </td>
                        </tr>
                        <?php
                        $i++;
                    }
                } ?>
                </tbody>
            </table>
            </div>

        </div>


<!--        <div class="mui-tabs__pane mui-panel" id="pane-default-2">-->

<!--            <div class="mui-container-fluid">-->
<!--            <table class="mui-table mui-table--bordered table_center users_info_table">-->
<!--                <thead>-->
<!--                <tr>-->
<!--                    <th>#</th>-->
<!--                    <th>ID</th>-->
<!--                    <th><i class="fa fa-clock-o"></i> Дата начала</th>-->
<!--                    <th><i class="fa fa-cogs"></i> Статус</th>-->
<!--                    <th><i class="fa fa-users"></i> Участники</th>-->
<!--                    <th><i class="fa fa-trophy"></i> Результат</th>-->
<!--                    <th><i class="fa fa-eye"></i> Визуализация</th>-->
<!--                </tr>-->
<!--                </thead>-->
<!---->
<!--                <tbody>-->
<!--                --><?php
//                $i = 1;
//                if (isset($final_games_info)) {
//                    foreach ($final_games_info as $game) {
//
//                        $game['result'] = json_decode($game['result'], true);
//
//                        ?>
<!--                        <tr>-->
<!--                            <td>-->
<!--                                --><?//= $i ?>
<!--                            </td>-->
<!--                            <td class="user_id">-->
<!--                                --><?//= $game['id'] ?>
<!--                            </td>-->
<!---->
<!--                            <td>-->
<!---->
<!--                                --><?//= date("d/m/Y H:i:s", $game['datetime']) ?>
<!---->
<!--                            </td>-->
<!--                            <td class="bold">-->
<!--                                <span-->
<!--                                --><?php
//                                if ($game['status'] == 'ok') {
//                                    echo " class='text_green'>";
//                                    echo "Проверено";
//
//                                } elseif ($game['status'] == 'error') {
//                                    echo " class='text_red'>";
//                                    echo "Ошибка во время проверки";
//                                } elseif ($game['status'] == 'work') {
//                                    echo " class='text_blue'>";
//                                    echo "Выполняется";
//                                } else {
//                                    echo ">";
//                                    echo "В очереди";
//                                }
//                                ?>
<!--                                </span>-->
<!--                            </td>-->
<!--                            <td>-->
<!--                                --><?php
//
//                                foreach ($game['users'] as $game_user) { ?>
<!---->
<!--                                    --><?//= $game_user['name'] ?>
<!--                                    <br>-->
<!--                                    --><?php
//                                } ?>
<!--                            </td>-->
<!--                            <td>-->
<!---->
<!--                                --><?php
//                                if ($game['result'] != "") {
//                                    foreach ($game['result'] as $result) {
//                                        echo $result['Name'] . " - " . $result['Points'] . "<br>";
//                                    }
//                                }
//                                ?>
<!--                            </td>-->
<!---->
<!--                            <td>-->
<!--                                --><?php //if ($game['status'] == 'ok') { ?>
<!--                                    <a href="?gameid=--><?//= $game['id'] ?><!--&type=1&game_type=2"-->
<!--                                       dataid="--><?//= $game['id'] ?><!--"-->
<!--                                       class="download_visualize_info_btn">-->
<!--                                        <button type="button" class="mui-btn mui-btn--small mui-btn--primary">-->
<!--                                            Отладчик-->
<!--                                        </button>-->
<!--                                    </a>-->
<!--                                    <a href="?gameid=--><?//= $game['id'] ?><!--&type=2&game_type=2"-->
<!--                                       dataid="--><?//= $game['id'] ?><!--"-->
<!--                                       class="download_visualize_info_btn">-->
<!--                                        <button type="button" class="mui-btn mui-btn--small mui-btn--primary">-->
<!--                                            Визуализатор-->
<!--                                        </button>-->
<!--                                    </a>-->
<!--                                --><?php //} ?>
<!--                            </td>-->
<!--                        </tr>-->
<!--                        --><?php
//                        $i++;
//                    }
//                } ?>
<!--                </tbody>-->
<!--            </table>-->
<!--            </div>-->
<!--        </div>-->

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
