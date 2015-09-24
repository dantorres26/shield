function initialize(){
    //replace first parameter with Mission Status - msonJSOB.status
    buildNav(1, 1);
}
function addTask(psyopElement, text) {
    var taskSection = document.getElementById("task-table");
    var row = document.createElement("tr");
    var cell = row.insertCell(0);

    var elementArea = document.createElement('textarea');
    elementArea.setAttribute("type", "text");
    elementArea.setAttribute("class", "form-box");
    elementArea.setAttribute("rows", 4);
    elementArea.setAttribute("cols", 50);
    elementArea.setAttribute("placeholder", "PSYOP Element");
    elementArea.setAttribute("name", "element" + taskSection.rows.length);
    elementArea.setAttribute("style", "margin-top: 5px; width: 20%; resize: none");
    elementArea.innerHTML = psyopElement;
    cell.appendChild(elementArea);

    var taskArea = document.createElement('textarea');
    taskArea.setAttribute("type", "text;");
    taskArea.setAttribute("class", "form-box");
    taskArea.setAttribute("rows", 4);
    taskArea.setAttribute("cols", 50);
    taskArea.setAttribute("placeholder", "Task");
    taskArea.setAttribute("name", "task" + taskSection.rows.length);
    taskArea.setAttribute("style", "margin-top: 5px; width: 80%; resize: none");
    taskArea.innerHTML = text;
    cell.appendChild(taskArea);

    taskSection.appendChild(row);
    $('html, body').scrollTop($(document).height());
}

function saveMD(){
    $.ajax({
        type: "GET",
        url: "Save1MD",
        success: function (response) {
            showAndDismissAlert("success", response);
            setTimeout(function(){ window.location.assign("ANMission2DS") }, 3000);
        }
    });
}

