<?php
require_once("core/config.php");
session_start();
require_once("core/db.php");
require_once ("core/functions.php");
$users = getOnlyUsers();
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


    <div class="mui-container-fluid">


        <ul class="mui-tabs__bar flex_ul">
            <li class="tab1 mui--is-active" data-id="1"><a class="pointer" data-mui-toggle="tab"
                                                           data-mui-controls="pane-default-1">
                    <i class="fa fa-user"></i>
                    Рейтинг</a>
            </li>
            <li class="tab2" data-id="2"><a class="pointer" data-id="2" data-mui-toggle="tab"
                                            data-mui-controls="pane-default-2">
                    <i class="fa fa-plus-circle"></i>
                    Финал</a>
            </li>

        </ul>

        <div class="mui-tabs__pane mui-panel mui--is-active" id="pane-default-1">
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
                if (isset($users) && count($users)>0) {
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
                    }
                }?>


                </tbody>

            </table>
            
        </div>
        </div>


        <?php $users = getFinalUsers() ?>

        <div class="mui-tabs__pane mui-panel " id="pane-default-2">
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
                    if (isset($users) && count($users)>0) {
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
                        }
                    }?>


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

