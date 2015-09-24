function initialize(){
    //replace first parameter with Mission Status - msonJSOB.status
    buildNav(3, 3);
}

function savePCO(){
    $.ajax({
        type: "GET",
        url: "Save3PCO",
        success: function (response) {
            showAndDismissAlert("success", response);
            setTimeout(function(){ window.location.assign("ANMission4COG") }, 3000);
        }
    });
}


