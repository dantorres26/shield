<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHIELD: Decision Support System</title>

        <!--Bootstrap-->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

        <!--Layout-->
        <link href="css/layout.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

        <!--General Scripts-->
        <script src="js/util.js"></script>
        <script  src="js/alert.js"></script>

        <!--Page Script-->
        <script src="analyst/pagescripts/an_missions.js"></script>

    </head>
    <body onload="initialize()">

        <!--Navigation Bar-->
        <script src="js/navigation.js"></script>

        <div id="container-fluid">
            <div id="content-shield" style="border-top: none;">
                <table class="table table-bordered table-hover list-table">
                            <caption class="matrix-caption" style="font-size: 18px;">ALL MISSIONS</caption>
                            <thead style="background-color: #D3D3D3;">
                                <tr>
                                    <th width="20%">Mission Title</th>
                                    <th width="30%">Mission Objective</th>
                                    <th width="30%">Area of Operation</th>
                                    <th width="20%">Progress</th>
                                </tr>
                            </thead>
                            <tbody id="existing-table-body">
                               
                                </tbody>
                        </table>
            </div>
        </div>
        
        <!--Notification Alert-->
        <div class="alert-messages text-center">
        </div>
    </body>
</html>
