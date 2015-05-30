$( document ).ready(function() {
  $("#mailjet-widget").on("submit", function (e) {
    e.preventDefault();
    var url = "http://mailapi.mythicapps.io/addContact?"+$("#mailjet-widget").serialize();
    $.post( url, function( data ) {
      $(".mailjet-widget-loader").hide();
      if (data.status === "ok"){
        $(".mailjet-widget-status").addClass("success").text(data.message).show();
      }
      else if (data.status === "error"){
        $("#mailjet-widget").css('animation','none').toggle("slow");
        $(".mailjet-widget-status").addClass("error").text(data.message).show();
      }
      $(".mailjet-widget-status").fadeOut(3500);
    });
    $(".mailjet-widget-status").attr("class","mailjet-widget-status").hide();
    $("#mailjet-widget").toggle("slow");
    $(".mailjet-widget-loader").show();
  });
});
