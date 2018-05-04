<?php
/**
 * Created by PhpStorm.
 * User: Galaxy
 * Date: 04.05.2018
 * Time: 9:07
 */
if (!isset($_GET['JOPA']) || $_GET['JOPA'] != "mercyme")
{
    exit;
}

require_once ("core/config.php");
require_once ("core/db.php");
require_once ("core/functions.php");

?>

<!doctype html>
<html>
<?php

//InsertUserGroup();

//echo "<pre>";
//print_r($result);
//echo "</pre>";


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

        <form action="core/addusers.php" method="post" class="mui-form">
            <div class="mui-textfield">
<!--                <input type="textare"  required name="users" placeholder="Имя Логин Пароль">-->
                <textarea name="users" class="textarea" cols="30" rows="10" placeholder="Имя Логин Пароль"></textarea>
            </div>

            <button type="submit" name="register" class="mui-btn mui-btn--raised">Добавить пользователей</button>
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

