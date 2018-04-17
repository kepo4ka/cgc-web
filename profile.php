<!doctype html>
<html>
<?php
require_once("core/config.php");
require_once("core/db.php");
require_once("core/upload.php");


require_once("core/head.php");
?>


<body>
<?php
require_once("core/header.php");
?>

<div id="content-wrapper" class=" mui-container-fluid">

    <div class="mui-container-fluid mui-panel">
        <form action="profile.php" method="post" enctype='multipart/form-data'>
            <input type="file" name="source"/>
            <input type="submit" name="upload" value="Загрузить"/>
        </form>
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
