<?php

$userLogin = "test";

$uploadfile = SOURCE_PATH . "/" . $userLogin . "/strategy.cs";


if(isset($_POST['upload']) && defined("SOURCE_PATH")) {

    if(!empty($_FILES)) {
        $userFile = $_FILES['source'];
        $err = array();

        //Коды ошибок загрузки файла
        $errUpload = array(
            0 => 'Ошибок не возникло, файл был успешно загружен на сервер. ',
            1 => 'Размер принятого файла превысил максимально допустимый размер, который задан директивой upload_max_filesize конфигурационного файла php.ini.',
            2 => 'Размер загружаемого файла превысил значение MAX_FILE_SIZE, указанное в HTML-форме.',
            3 => 'Загружаемый файл был получен только частично.',
            4 => 'Файл не был загружен.',
            6 => 'Отсутствует временная папка. Добавлено в PHP 4.3.10 и PHP 5.0.3.'
        );       


        $test = explode('.', $userFile['name']);
        $type = pathinfo($userFile['name'])['extension'];
        if ($type !== "cs")
        {
            $err[] = "Неверное расширение файла, пока только C#";
        }


        if($_FILES['source']['error'] > 0) {
            $err[] = $errUpload[$userFile['error']];
        }

        if (!empty($err))
        {
            print_r($err);
        }
        else {
            if (!is_dir(SOURCE_PATH . "/" . $userLogin))
            {
                mkdir(SOURCE_PATH . "/" . $userLogin);
            }

            if (is_uploaded_file($userFile['tmp_name'])) {
                move_uploaded_file($userFile['tmp_name'], $uploadfile);
                ChangeSourceFileInfo(1, $uploadfile);
            }
        }
    }
}

?>