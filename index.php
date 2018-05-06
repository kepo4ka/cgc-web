<?php
require_once("core/config.php");
require_once ("core/functions.php");

session_start();



$githubInfo = getLastUserFilesGithub();



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
      <img src="assets/img/bomber.png" alt="bomberLogo">

      <br>
      <div class="mui--text-display1 row wow zoomInDown">
        Game of Thrones</div>
      <div class="mui--text-display5 row wow fadeIn">
        Конкурс игровых стратегий</div>
      <br>
      <button class="mui-btn mui-btn--primary mui-btn--raised" id="get_started_btn">Участвовать</button>
      <br>
      <br>

      <br>

      <div class="mui-container-fluid mui-panel">
        <h1 class="mui--divider-bottom description_title">Описание</h1>

        <div class="mui-container-fluid">
          <p>Приглашаем Вас поучастовать в конкурсе игровых стратегий "Game of Thrones":</p>
          <p>Используя свои навыки программирования, создайте своего Бота (игровую стратегию), который будет биться с Ботами других участников в предлагаемом игровом мире.</p>

          <code> <p class="game_description"> Борьба за Железный трон в Королевской Гавани не прекращается ни на секунду. Чтобы восстановить свою власть в столице, королева Серсея пошла на крайние меры – взорвала главный храм, Великую септу Бейлора. Это заставило её соперников перейти к решительным действиям: они начали устраивать подрывы по всему городу. В ответ на столь наглые действия Серсея приказала уничтожить целые районы, где могут скрываться ее враги, и пообещала оплатить работу золотом. И так небо над Королевской гаванью затянулось дымом пожаров. Вы управляете одним из подрывников Серсеи. Ваша задача – уничтожить как можно больше построек и собрать как можно больше снаряжения. В каждый район было послано до 4 подрывников с приказом уничтожать любого, кто встретится на пути.</p>
          </code>
          <strong> Вся информацию, правила, исходники и прочие материалы можно найти на
          <a href="https://github.com/nosucgc/NOSUCGC">GITHUB</a></strong>
          <p>Последняя версия - <?=$githubInfo->tag_name?></p>
          <p>По всем возникшим вопросам обращаться в <a href="https://vk.com/topic-57895109_38396500">Обсуждение ВК</a></p>
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
