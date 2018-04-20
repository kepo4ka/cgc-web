<header class="mui-appbar mui--z1">
    <div class="mui-container">
        <table class="header_table">
            <tr class="mui--appbar-height">
                <td class="mui--text-title"><a href="/">NOSU Code Game Challange</a>
                   </td>
             <td>
                 <ul class="mui-list--inline mui--text-body2">
                     <li>
                         <a href="users.php">Участники</a>
                     </li>

                 </ul>

             </td>


                <td class="mui--text-right">
                    <ul class="mui-list--inline mui--text-body2">

                        <?php

                        if (!isset($_SESSION['user_id']))
                        {
                        ?>
                            <li>
                                <a class="login_btn pointer">
                                    <i class="fa fa-user wow zoomInDown" aria-hidden="true"></i>
                                    Войти</a>

                                <form action="core/auth.php" method="post" class="mui-form auth_form">
                                    <legend>Авторизация</legend>
                                    <div class="mui-textfield">
                                        <input type="text" required name="login" placeholder="Логин">
                                    </div>

                                    <div class="mui-textfield">
                                        <input type="text" required name="password" placeholder="Пароль">
                                    </div>

                                    <button type="submit" name="auth" class="mui-btn mui-btn--raised">Войти</button>
                                </form>

                            </li>
                            <?php
                        } else { ?>
                            <li>

                                <a  href="profile.php"><?= $_SESSION['name'] ?></a>
                            </li>
                            <li>
                                <a  href="core/auth.php?logout=true">Выйти</a>
                            </li>

                            <?php
                        }
                        ?>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
    
    <div class="notitfations_fixed">
        Уведомление
        
    </div>
    
</header>

