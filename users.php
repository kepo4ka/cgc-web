<?php

session_start();
require_once("core/config.php");
require_once("core/db.php");
require_once ("core/functions.php");
$users = getUsers();
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


</script>

<div id="content-wrapper" class=" mui-container-fluid">


    <div class="mui-container-fluid mui-panel">

        <div class="mui--text-display1">Участники</div>
        <div class="mui-container-fluid ">
            
            <table class="mui-table mui-table--bordered table_center users_info_table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Имя</th>
                    <th>Очки</th>
                </tr>
                </thead>

                <tbody>
                <?php
                $i=1;
                foreach ($users as $info) {
                    ?>
                    <tr>
                        <td>
                            <?= $i ?>
                        </td>
                        <td class="source_info">

                                <?= $info['name'] ?>

                        </td>
                        <td class="source_info">
                            <?= $info['points'] ?>
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

<?php
require_once("core/footer.php");
?>

<script>
    new WOW().init();
</script>
</body>
</html>




?>