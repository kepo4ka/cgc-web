<?php
require_once("core/config.php");

session_start();
if(!isset($_SESSION['admin']) || $_SESSION['admin'] != true)
{
    header("Location: /123");
}

$_SESSION['some_key'] = "mercyme";

require_once("core/db.php");
require_once("core/functions.php");

if (!isset($_SESSION['user_id'])) {
    header("Location: /unauth.php");
}

$user = getUser($_SESSION['user_id']);
if (!isset($user)) {
    header("Location: /unauth.php");
}

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
<script>
    myUserId = <?=$_SESSION['user_id']?>;
</script>

<div id="content-wrapper" class=" mui-container-fluid">

    <div class="mui-container-fluid mui-panel grid">

        <button type="button" class="mui-btn mui-btn--raised create_rating_games_wave_btn">Создать одну волну рейтинговых игр
        </button>

        <button type="button" class="mui-btn mui-btn--raised create_final_games_wave_btn">Создать все игры финала
        </button>

        <button type="button" class="mui-btn mui-btn--raised delete_old_ver_exe_files_btn">Удалить старые версии скомпилированных файлов
        </button>
        <button type="button" class="mui-btn mui-btn--raised delete_rating_btn">Удалить рейтинг
        </button>
        <button type="button" class="mui-btn mui-btn--raised delete_final_btn">Удалить финал
        </button>
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
