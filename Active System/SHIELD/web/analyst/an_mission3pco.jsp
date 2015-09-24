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

        <!--Sliding Side Bar CSS-->
        <link href="css/BootSideMenu.css" rel="stylesheet">

        <!--Page Script-->
        <script src="analyst/pagescripts/an_mission3pco.js"></script>
        <script src="js/mission-menu-builder.js"></script>

        <script>
            $(function () {
                $('#collapseTwo').collapse('hide')
            });
            $(function () {
                $('#collapseOne').collapse('show')
            });
        </script>

    </head>

    <body onload="initialize()">

        <!--Navigation Bar-->
        <script src="js/navigation.js"></script>

        <div id="container-fluid">
            <div id="content-shield" style="border-top: none;">
                <div class="col-md-2" style="position: fixed;">
                    <div style="background-color: rgba(230,230,230,1.0); color: black; width: 18vw; border-radius: 5px; text-align: justify; padding: 0 15px 0 15px;">
                        <h5 style="padding-top: 20px; font-size: 15px;"><span class="glyphicon glyphicon-file" aria-hidden="true"> </span><b> MISSION:</b><br> <label id="nav-mission-title-label" style="font-size: 13px; font-weight: 100; padding-left: 20px; text-align: left;"> </label></h5>
                        <h5 style="padding-bottom: 20px; font-size: 15px;"><span class="glyphicon glyphicon-user " aria-hidden="true"> </span><b> ANALYST:</b><br> <label id="nav-analyst-name-label" style="font-size: 13px; font-weight: 100; padding-left: 20px; text-align: left;"> </label></h5>
                    </div>
                    <ul class="nav nav-pills nav-stacked affix" id="nav-shield" role="tablist">
                    </ul>
                </div>
                <div class="col-md-10" style="margin-left: 17vw; height: 84vh; margin-top: 1vh;">
                    <div style="position: absolute; top: 80vh; right: 3vmin;">
                        <button type="button" class="btn btn-success btn-sm" style="position: fixed; right: 3vw;" onclick="savePCO()()"><span class="glyphicon glyphicon-saved"></span> Save and Proceed to Center of Gravity</button>
                        <button class="btn btn-warning btn-sm" style="position: fixed; right: 22vw" id="delete-button"><span class="glyphicon glyphicon-pencil"></span> Delete Selected Shape</button>
                    </div>
                    <div id="mission-characteristics-overlay" style="height: 79vh;">
                        <div class="col-md-6">

                            <div class="panel-body">
                                <div id="political">
                                    <p id="header">POLITICAL</p>
                                </div>
                                <div id="military-security">
                                    <p id="header">MILITARY AND SECURITY</p>
                                </div>
                                <div id="economic">
                                    <p id="header">ECONOMIC</p>
                                </div>
                                <div id="social">
                                    <p id="header">SOCIAL</p>
                                </div>
                                <div id="information">
                                    <p id="header">INFORMATION</p>
                                </div>
                                <div id="infrastructure-technology">
                                    <p id="header">INFRASTRUCTURE AND TECHNOLOGY</p>
                                </div>
                                <div id="environment-physical">
                                    <p id="header">ENVIRONMENT/PHYSICAL</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div id="mission-characteristics-overlay-map">

                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Sliding Side Bar Menu-->
        <div id="slidingmenu">
            <h4 style="margin-top: 2vh; margin-bottom: 1vh; text-align: center;">Mission Sources</h4>
            <div class="scroll" style="overflow-y: auto; position: fixed; height: 85vh; margin-top: 2vh;">
                <div id="mission-sources">
                    <table class="excerpt-list" id="source-table">

                    </table>
                </div>
            </div>

            <button class="btn btn-success " style="position: fixed; top: 94vh; width: 15vw;margin-left: 1vw; margin-right: 1vw" onclick="drawOverlay()"><span class="glyphicon glyphicon-pencil"></span> Draw on Map</button>

        </div>
        <!-- /Sliding Side Bar Menu-->

        <script src="js/BootSideMenu.js"></script>

        <script type="text/javascript">
                $('#slidingmenu').BootSideMenu({side: "right"});
        </script>
        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-36251023-1']);
            _gaq.push(['_setDomainName', 'jqueryscript.net']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>
        <!--/Sliding Side Bar Menu-->

        <!--Notification Alert-->
        <div class="alert-messages text-center">
        </div>
    </body>
</html>
