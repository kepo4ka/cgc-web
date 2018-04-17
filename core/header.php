<header class="mui-appbar mui--z1">
    <div class="mui-container">
        <table>
            <tr class="mui--appbar-height">
                <td class="mui--text-title">Brand.io</td>
                <td class="mui--text-right">
                    <ul class="mui-list--inline mui--text-body2">
                        <li><a href="#">About</a></li>
                        <li><a href="#">Pricing</a></li>
                        <?php
                        if (!isset($_SESSION['id']))
                        {
                        ?>
                        <li><a  id="login_btn"><i class="fa fa-user wow zoomInDown"  aria-hidden="true"></i>
                                Login</a><<?php
                            } ?>/li>
                        

                    </ul>
                </td>
            </tr>
        </table>
    </div>
</header>