$(document).ready(function () {


    var users_array = [];

    $("a.burger_icon_btn").on("click", function () {
        myFunction();
    });


    $("a.open_hide_info").on("click", function () {
        var text = $(this).parent().find(".hidden_content").html();
        activateModalText(text);
    });




    $("a.login_btn").on("click", function () {
      //  var text = $("form.auth_form").html();
        var elem = activateModalHTML("div");
       // $("form.auth_form").appendTo($(elem));
        var form = $("form.auth_form").clone();
        form.css("display", "block");
        form.appendTo($(elem));
       // $("form.auth_form").css("display", "block");
    });

    $("button#get_started_btn").on("click", function () {
        window.location.href = '/profile.php';
    });

    $(".select_users_checkbox").on("change", function () {
        SelectUserforGame(this, $(this).prop("checked"));
    });


    $(".game_start_btn").on("click", function () {
        AjaxSendUserGameStartInfo();
    });



    $(".source_selected_radio").on("change", function () {
        var source_id = 0;

        source_id = $(this).parent().parent().parent().parent().find(".source_hide_id").text();
        visual_id = $(this).parent().parent().parent().parent().find(".source_visal_id").text();

        AjaxChangeSelectedSource(source_id, visual_id);
    });







    function AjaxChangeSelectedSource(source_id, visual_id) {
        $.ajax({
            type: "POST",
            url: "ajax.php",
            // dataType: 'json',
            data: {
                "type": "updateselectedsource",
                "user_id": myUserId,
                "source_id": source_id
            },
            // processData: false,
            // contentType: false,
            success: function (response) {
               // console.log(response);

                response = response.trim();
                if (response == "good") {
                    var message = "Исходник №" + visual_id + " выбран в качестве основного";
                }
                else if (response == "errorstatus") {
                    var message = "Исходник №" + visual_id + " не может быть выбран из-за ошибки компиляции";
                }
                else {
                    var message = "Ошибка при попытке изменения поля";
                }
                NotifyMessage(message);
            }
        });
    }

    function AjaxSendUserGameStartInfo() {
        if (users_array.length < 1) {
            alert("Необходимо выбрать не менее одного пользователя");
            return;
        }
        $.ajax({
            type: "POST",
            url: "ajax.php",
            // dataType: 'json',
            data: {
                "type": "createusersandboxgame",
                "user_id": myUserId,
                "users_array": users_array
            },
            // processData: false,
            // contentType: false,
            success: function (response) {
                console.log(response);
                response = response.trim();
                res = response.split(' ');

                if (res[0]=="good")
                {
                    message = "Игра №" + res[1] + " успешно добавлена в очередь. Следите за её состоянием на вкладке История Игр"
                }
                else {
                    message = response;
                }
                NotifyMessage(message);
            }
        });

    }


    function NotifyMessage(message) {
        var notify = $(".notitfations_fixed");
        notify.text(message);
        notify.css("display", "none");
        notify.fadeIn("slow", function () {
            setTimeout(function () {
                notify.fadeOut("slow", function () {
                    notify.text("");
                  //  window.location.reload();
                });
            }, 2000);
        });
    }




    function SelectUserforGame(elem, k) {
        console.log(users_array);
        if (users_array.length >= 3 && k) {
            alert("Нельзя добавить больше 3 участников");
            $(elem).prop("checked", false);
            return;
        }
        var user_id = $(elem).parent().parent().find(".user_id").text();

        if (!user_id) {
            alert("Не удалось найти ID пользователя");
            return;
        }

        user_id = parseInt(user_id);

        if (k) {
            users_array.push(user_id);
        }
        else {
            for (i = 0; i < users_array.length; i++) {
                if (users_array[i] === user_id) {
                    users_array.splice(i, 1);
                    break;
                }
            }
        }

    }


    function activateModalHTML(text) {
        var modalEl = document.createElement('div');
        modalEl.style.minWidth = '400px';
        modalEl.style.maxWidth = "400px";
        modalEl.style.Height = '300px';
        modalEl.style.margin = '100px auto';
        modalEl.style.backgroundColor = '#fff';
        modalEl.className = "mui-panel";
        mui.overlay('on', modalEl);
        return modalEl;
    }



    function activateModalText(text) {

        var modalEl = document.createElement('div');
        modalEl.style.minWidth = '400px';
        modalEl.style.maxWidth = "400px";
        modalEl.style.Height = '300px';
        modalEl.style.margin = '100px auto';
        modalEl.style.backgroundColor = '#fff';
        modalEl.style.position='relative';
        modalEl.className = "mui-panel";

        $(modalEl)[0].innerText =text;


        mui.overlay('on', modalEl);
    }

    function myFunction() {
        var x = document.getElementById("myNavbar");
        if (x.className === "navbar") {
            x.className += " responsive";
        } else {
            x.className = "navbar";
        }
    }



});


