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
        <script src="encoder/pagescripts/en_home.js"></script>
    </head>
    <body onload="initialize()">

        <!--Navigation Bar-->
        <script src="js/en_navigation.js"></script>

        <div id="container-fluid">
            <div id="content-shield" style="border-top: none;">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-success btn-sm" data-toggle="modal" data-target="#addSource" style="margin-right: 1vw;"><span class="glyphicon glyphicon-plus"></span> Add New Source</button>

                    <table class="table table-bordered table-hover list-table">
                        <thead style="background-color: #D3D3D3;">
                        <th style="width: 25%;">Type</th>
                        <th style="width: 30%;">Name</th>
                        <th style="width: 30%;">Description</th>
                        <th style="width: 15%;">Date Published</th>
                        </thead>
                        <tbody id="src-table">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Add Source Modal -->
        <div class="modal fade" id="addSource" tabindex="-1" role="dialog" 
             aria-labelledby="addSourcelabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" 
                                data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                            Add New Source
                        </h4>
                    </div>
                    <div class="modal-body">
                        <table style="width: 90%;">
                            <tr>
                                <td><h5>Type: </h5></td>
                                <td><select id="source-type" required class="form-box"></select></td>
                            </tr>
                            <tr>
                                <td><h5>Name: </h5></td>
                                <td><input type="text" id="source-name" required class="form-box" placeholder="Enter Source Name"></td>
                            </tr>
                            <tr>
                                <td><h5>Description: </h5></td>
                                <td><input type="text" class="form-box" required placeholder="Enter Description"></td>
                            </tr>
                            <tr>
                                <td><h5>Date Published: </h5></td>
                                <td><input type="date" class="form-box" required></td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" onclick="saveSource()" class="btn btn-success"><span class="glyphicon glyphicon-saved"> </span>
                            Add New Source
                        </button>
                        <button type="button" class="btn btn-default" 
                                data-dismiss="modal">Close
                        </button>

                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>

        <div class="alert-messages text-center">
        </div>
    </body>
</html>
