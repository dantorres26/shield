var srcJSON = [{"datePublish": "2010-01-01", "type": "Area Study", "name": "Davao del Sur Area Study 2010", "description": "Area study conducted on the Davao del Sur area by the 10th Infantry (AGILA) division", "id": 1},
    {"datePublish": "2010-01-01", "type": "Interview", "name": "Davao del Sur Area Study 2010", "description": "Area study conducted on the Davao del Sur area by the 10th Infantry (AGILA) division", "id": 2}];

function initialize() {
    showAndDismissAlert('success', 'Welcome to <strong>SHIELD</strong> - Encoder');

    var srcTable = document.getElementById('src-table');

    for (var x = 0; x < srcJSON.length; x++) {
        var row = srcTable.insertRow(x);
        row.setAttribute('onclick', "document.location = 'ENSourceView?sourceID=" + srcJSON[x].id + "';");
        var srcType = row.insertCell(0);
        srcType.innerHTML = srcJSON[x].type;
        var srcName = row.insertCell(1);
        srcName.innerHTML = srcJSON[x].name;
        var srcDesc = row.insertCell(2);
        srcDesc.innerHTML = srcJSON[x].description;
        var srcDatePub = row.insertCell(3);
        srcDatePub.innerHTML = srcJSON[x].datePublish;
    }
}

function saveSource() {
    $.ajax({
        type: "GET",
        url: "SaveSource",
        success: function (response) {
            $('#addSource').modal('hide');
            showAndDismissAlert("success", response);
//            $.ajax({
//                type: "GET",
//                url: "GetSources",
//                success: function (response) {
//                    showAndDismissAlert("success", response);
//                    setTimeout(function () {
//                        window.location.assign("ANMission2DS")
//                    }, 3000);
//                }
//            });
        }
    });
}