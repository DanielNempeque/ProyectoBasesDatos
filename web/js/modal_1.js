$(document).ready(function(){
    $("#myLogin").click(function(){
        $("#login").modal();
    });
});

$(document).ready(function(){
    $("#myRegister").click(function(){
        $("#register").modal();
    });
});

$(document).ready(function() {
    $('.perfil a').click(function() {
        $('#login').modal();
    });
});
