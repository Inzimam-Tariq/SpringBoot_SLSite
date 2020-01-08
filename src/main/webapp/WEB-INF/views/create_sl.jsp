<%-- 
    Document   : faqs
    Created on : Sep 16, 2019, 4:54:29 PM
    Author     : Inzimam Tariq
--%>

<%@include file="taglibs.jsp" %>

<f:view>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <title>Sato King</title>
            <jsp:include page="head_scripts.jsp" /> 
            <style >
                .form-sign {
                    width: 100%;
                    max-width: 520px;
                    padding: 15px;
                    margin: auto;
                }
                form {
                    display: block;
                    margin-top: 0em;
                }
                img{
                    border-radius: 50%;
                }
            </style>
        </head>
        <% response.getWriter().flush(); %>
        <body style="padding-bottom: 70px;">

            <div class="container-fluid" style="padding-top: 30px">
                <div class="row">
                    <!--/left advert space-->
                    <div class="col-sm-3 d-none d-sm-block" style="background-color:lavender;">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6 d-none d-sm-block" style="background-color:orange;">
                                    abc
                                </div>
                                <div class="col-sm-6 d-none d-sm-block" style="background-color:blue;">
                                    def
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/actual content body -->
                    <div class="col-sm-6" >
                        <div class="container-fluid d-flex flex-column align-items-center justify-content-center"><br>
                            <h1 class="display-4 d-md-display-4"><b>Create Shortlink</b></h1>
                            <p>Your short 'N' sweet URL is just a few seconds away from you. You just have to paste your URL and click a button to get your shortlink.</p>
                            <br>
                            <br>

                            <div class="card-deck">
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light"><label>View All <a href="/userLinks"><b>Links</b></a></label></div>
                                    <form class="signup-form" action="createSl" method="Post">
                                        <div class="card-body d-flex flex-column justify-content-center align-items-center text-center text-light">                                                                            

                                            <span class="fa-stack fa-lg">
                                                <i class="far fa-circle fa-stack-2x"></i>
                                                <i class="fas fa-link fa-stack-1x"></i>
                                            </span>
                                            <h2>Shotlink</h2>
                                            <div>Please paste your URL in the below field and press this <span class="fa fa-link"></span>  <b>Shortlink</b> icon.</div>
                                            <div>OR press <b>Create Shortlink</b> button</div>
                                            <br>
                                            <div class="input-group">
                                                <input type="text" id="destinationUrl" name="destinationUrlLink" class="form-control" placeholder="Destination URL here" required="" autofocus="">
                                                <div class="input-group-prepend" type="submit">
                                                    <span class="input-group-text">
                                                        <span class="fa fa-link"></span>
                                                    </span>
                                                </div>
                                            </div>
                                            <br>
                                            <br>
                                            <div class="card-footer mt-auto">
                                                <button type="submit" class="btn btn-primary btn-lg">Create Shortlink</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!--/right advert space-->
                    <div class="col-sm-3" style="background-color:lavender;">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-6 d-none d-sm-block" style="background-color:orange;">
                                    abc
                                </div>
                                <div class="col-sm-6 d-none d-sm-block" style="background-color:blue;">
                                    def
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script type="text/javascript" src='<c:url value="/js/dailybonus.js"/>'></script>
        </body>
    </html>
</f:view>
