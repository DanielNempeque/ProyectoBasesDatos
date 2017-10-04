$(document).ready(function(){
	$("#regi").click(function(){

		var psw1 = $("psw1").val();
		var psw2 = $("psw2").val();

		if (!psw1.equals(psw2)) {
			alert("Ingrese 2 passwords iguales");
		}

	});
});

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
