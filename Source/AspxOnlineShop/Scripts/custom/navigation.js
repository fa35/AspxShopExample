

$(document).ready(function () {
    $.ajax({
        type: "POST",
        url: "/Home/GetNavigationModel",
        success: function (msg) {
            $("#ResultContent").html(msg);
        }
    });
});


function toggleVisibilityUntergruppe(element) {
    var untergruppen = document.getElementById('untergruppen_' + $(element).text());
    $(untergruppen).fadeToggle("slow");
};
