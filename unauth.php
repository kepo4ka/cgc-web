
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
        <?php
        if (isset($_GET["auth_error"]))
        {
           $message = "Ошибка авторизации";
        }
        else {
            $message = "Пройдите авторизацию";
        }
        ?>



        <div class="mui--text-headline"><?=$message?></div>

        <form action="core/auth.php" method="post" class="mui-form auth_form block">
<!--            <legend>Авторизация</legend>-->
            <div class="mui-textfield">
                <input type="text" required name="login" placeholder="Логин">
            </div>
            <div class="mui-textfield">
                <input type="password" required name="password" placeholder="Пароль">
            </div>

            <button type="submit" name="auth" class="mui-btn mui-btn--raised">Войти</button>
        </form>


<!--        <a class="login_btn pointer">Войти в личный кабинет</a>-->
       
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
