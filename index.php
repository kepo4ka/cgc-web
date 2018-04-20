<!doctype html>
<html>
<?php
require_once("core/head.php");

?>
  <body>
  <?php
  require_once ("core/header.php");

  ?>
    <div id="content-wrapper" class="mui--text-center">
      <div class="mui--appbar-height"></div>
      <br>
      <br>
      <div class="mui--text-display3 row wow zoomInDown">
        NOSU Code Game Challange</div>
      <div class="mui--text-display5 row wow fadeIn">
        Конкурс игровых стратегий</div>
      <br>
      <br>
      <button class="mui-btn mui-btn--raised" id="get_started_btn">Участвовать</button>
      <br>
      <br>
      <i class="fa fa-university fa-5x mui--color-pink-A100 mui--text-display3 row wow zoomIn" aria-hidden="true"></i>
    </div>
  <?php
  require_once ("core/footer.php");
  ?>
    <script>
      new WOW().init();

    </script>
  </body>
</html>
