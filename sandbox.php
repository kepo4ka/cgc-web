<?php
require_once("core/config.php");

session_start();

require_once("core/db.php");
require_once("core/functions.php");

if (isset($_GET['gameid']) && isset($_GET['type'])) {
    if ($_GET['type']==1) {
        $path = SANDBOX_GAMES_PATH . "/" . $_GET['gameid'] . "/" . GAMESTATES_COMPRESSED_JSON_FILE_NAME;
        file_force_download($path);
        unset($_GET['gameid']);
        unset($_GET['type']);
        header("Location: /");
    }
    if ($_GET['type']==2) {
        $path = SANDBOX_GAMES_PATH . "/" . $_GET['gameid'] . "/" . GAMESTATES_COMMANDS_UNITY;
        file_force_download($path);
        unset($_GET['gameid']);
        unset($_GET['type']);
        header("Location: /");
    }
}





$games_info = GetALLSandboxGames();
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
    <div class="mui-container-fluid mui-panel">
        <div class="mui-container-fluid ">
            <a href="<?= $_SERVER['REQUEST_URI'] ?>" class="right">
                <button type="button" class="mui-btn mui-btn--raised">Обновить
                </button>
            </a>

            <div class="mui--text-display1">Пользовательские игры</div>
            <div class="mui-container-fluid">
            <table class="mui-table mui-table--bordered table_center users_info_table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th> <i class="fa fa-clock-o"></i> Дата начала</th>
                    <th> <i class="fa fa-user"></i> Создатель</th>
                    <th> <i class="fa fa-cogs"></i> Статус</th>
                    <th> <i class="fa fa-users"></i> Участники</th>
                    <th> <i class="fa fa-trophy"></i> Результат</th>
                    <th> <i class="fa fa-exclamation-circle"></i> Ошибки</th>
                    <th> <i class="fa fa-eye"></i> Скачать данные</th>
                </tr>
                </thead>

                <tbody>
                <?php
                $i = 1;
                if (isset($games_info)) {
                foreach ($games_info as $game) {

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
                        <td>
                            <?=$game['creator_name']?>
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
                            }
                            else {
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
                                <a href="?gameid=<?= $game['id'] ?>&type=1" dataid="<?= $game['id'] ?>"
                                   class="download_visualize_info_btn">
                                    <button type="button" class="mui-btn mui-btn--small mui-btn--primary">Отладчик
                                    </button>
                                </a>
                                <a href="?gameid=<?= $game['id'] ?>&type=2" dataid="<?= $game['id'] ?>"
                                   class="download_visualize_info_btn">
                                    <button type="button" class="mui-btn mui-btn--small mui-btn--primary">Визуализатор
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
