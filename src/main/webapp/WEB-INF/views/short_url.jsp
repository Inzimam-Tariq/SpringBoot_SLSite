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
            <style type="style.css"></style>
        </head>
        <% response.getWriter().flush(); %>
        <body style="padding-bottom: 70px;" onload="startCountdown()">
            <%--<jsp:include page="sidebar.jsp" />--%> 
            <div class="container-fluid">
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
                        <h1 class="display-4 d-md-display-4"><b>Title_Here</b></h1>
                        <div class="container-fluid"><br>
                            <p>This is a long test text for demo paragraph.</p>

                            <div class="alert alert-success alert-dismissible fade show">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Success!</strong>

                            </div>
                            
                            <form class="signup-form bg-dark text-light" action="shortUrl" method="Post">
                            <div class="text-center mb-4">
                                <img class="mb-4" src="images/img_avatar2.png" alt="" width="72" height="72">
                                <h2 class="form-signin-heading">Short URL</h2>
                                <p>Please paste your actual URL here to make it short!</p>
                                <hr>
                            </div>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <span class="fa fa-user"></span>
                                    </span>                    
                                </div>
                                <input type="text" class="form-control" name="username" placeholder="Username" required="required" autofocus="">
                            </div>
                            <br>
                            
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
                            </div>
                        </form>
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

            <script type="text/javascript" src='<c:url value="/js/sl_scripts.js"/>'></script>
        </body>
    </html>
</f:view>
