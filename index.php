<?php
require_once("core/config.php");

session_start();

?>

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
      <img src="assets/img/bomber.png" alt="">

      <br>
      <div class="mui--text-display3 row wow zoomInDown">
        NOSU Code Game Challange</div>
      <div class="mui--text-display5 row wow fadeIn">
        Конкурс игровых стратегий</div>
      <br>
      <button class="mui-btn mui-btn--primary mui-btn--raised" id="get_started_btn">Участвовать</button>
      <br>
      <br>

      <br>

      <div class="mui-container-fluid mui-panel">
        <h1 class="mui--divider-bottom">Описание</h1>

        <div class="mui-container-fluid">
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci consequuntur cupiditate doloremque ea ipsa
          iure optio qui sequi similique temporibus! Accusantium alias aliquid deleniti dolorum laborum nam quam
          repudiandae temporibus?
        </div>
      </div>


      <br>
      <!--      <i class="fa fa-university fa-5x mui--color-pink-A100 mui--text-display3 row wow zoomIn" aria-hidden="true"></i>-->
    </div>
  <?php
  require_once ("core/footer.php");
  ?>
    <script>
      new WOW().init();

    </script>
  </body>
</html>
