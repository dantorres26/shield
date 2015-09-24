function initialize() {
    //replace first parameter with Mission Status - msonJSOB.status
    buildNav(6, 6);
}

function saveCM() {
    $.ajax({
        type: "GET",
        url: "Save6CM",
        success: function (response) {
            showAndDismissAlert("success", response);
            setTimeout(function () {
                window.location.assign("ANMission7MO")
            }, 3000);
        }
    });
}