function initialize(){
    //replace first parameter with Mission Status - msonJSOB.status
    buildNav(2, 2);
}

function saveDS(){
    $.ajax({
        type: "GET",
        url: "Save2DS",
        success: function (response) {
            showAndDismissAlert("success", response);
            setTimeout(function(){ window.location.assign("ANMission3PCO") }, 3000);
        }
    });
}

