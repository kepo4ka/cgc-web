<header class="mui-appbar mui--z1">


    <div class="navbar" id="myNavbar">
        <a href="/">NOSU Code Game Challange</a>
        <a href="users.php">Участники</a>
        <a href="sandbox.php">Песочница</a>
        <a href="games.php">Турнир</a>

        <?php if (!isset($_SESSION['user_id'])) { ?>
            <a class="login_btn pointer navbar_float_right">
                <i class="fa fa-user"></i>
                Войти</a>
            <form action="core/auth.php" method="post" class="mui-form auth_form">
                <legend>Авторизация</legend>
                <div class="mui-textfield">
                    <input type="text" required name="login" placeholder="Логин">
                </div>
                <div class="mui-textfield">
                    <input type="password" required name="password" placeholder="Пароль">
                </div>

                <button type="submit" name="auth" class="mui-btn mui-btn--raised">Войти</button>
            </form>
        <?php } else { ?>
            <a href="core/auth.php?logout=true" class="navbar_float_right logout_phantom_responsive">
                <i class="fa fa-sign-out"></i> Выйти</a>
            <a href="profile.php" class="navbar_float_right">
                <i class="fa fa-user"></i>
                Моя стратегия
                (<?= $_SESSION['name'] ?>)</a>
            <a href="core/auth.php?logout=true" class="navbar_float_right logout_phantom">
                <i class="fa fa-sign-out"></i> Выйти</a>
        <?php } ?>

        <a class="burger_icon_btn">&#9776;</a>
    </div>
    
    <div class="notitfations_fixed">
        Уведомление
    </div>
</header>

