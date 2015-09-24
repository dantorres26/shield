function initialize() {
    //replace first parameter with Mission Status - msonJSOB.status
    buildNav(5, 5);
}

function saveTCOA() {
    $.ajax({
        type: "GET",
        url: "Save5TCOA",
        success: function (response) {
            showAndDismissAlert("success", response);
            setTimeout(function () {
                window.location.assign("ANMission6CM")
            }, 3000);
        }
    });
}