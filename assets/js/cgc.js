$(document).ready(function () {


    $("#login_btn").on("click", function () {
       activateModal();


    });


    function activateModal() {
        // initialize modal element
        var modalEl = document.createElement('div');
        modalEl.style.width = '400px';
        modalEl.style.height = '300px';
        modalEl.style.margin = '100px auto';
        modalEl.style.backgroundColor = '#fff';

        // show modal
        mui.overlay('on', modalEl);
    }


});