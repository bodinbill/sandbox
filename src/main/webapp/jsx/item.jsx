$(document).ready(function () {
    $(".item").each(function () {
        var me = this;
        $(me).find(".show-details").click(function () {
            $(me).find(".collapse").toggle();
        });
    });
});