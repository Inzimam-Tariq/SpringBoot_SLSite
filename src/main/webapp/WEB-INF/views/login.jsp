<%-- 
    Document   : home
    Created on : Sep 10, 2019, 2:06:58 PM
    Author     : Inzimam Tariq
--%>

<%@include file="taglibs.jsp" %>
<%@page isELIgnored="false" %>

<f:view>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <title>Sato King</title>
            <%@include file="head_scripts.jsp" %>
            <style >
                .form-signin {
                    width: 100%;
                    max-width: 420px;
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
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        <!--Success and error notifications-->
                        <c:if test="${param.error != null}">
                            <div class="alert alert-danger alert-dismissible fade show">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Danger!</strong>
                                <p>Bad credential:  <c:out value = "${param.error}"/></p>
                            </div>
                        </c:if>

                        <c:if test="${param.logout !=null}">
                            <div class="alert alert-success alert-dismissible fade show">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <div class="alter-header"><strong>Logout Success!</strong></div>
                                <p><c:out value = "${param.logout}"/></p>
                            </div>                            
                        </c:if>
                        
                        <c:if test="${param.msg !=null}">
                            <div class="alert alert-success alert-dismissible fade show">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Registration Successful:</strong>
                                <p><c:out value = "${param.msg}"/></p>
                            </div>                            
                        </c:if>

                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <h4>SatoKing, The King of Faucets</h4>
                        <p>Claim multiple coins (Bitcoin & Altcoins) and withdraw instantly to your FaucetHub account. For details of the features please click <a href="#site_features">here</a></p>
                    </div>
                    <div class="col-sm-6">
                        <!-- Login form code start-->
                        <form class="form-signin bg-dark text-light" action="process_login" method="POST">
                            <div class="text-center mb-4">
                                <img class="mb-4" src="images/img_avatar2.png" alt="" width="72" height="72">
                                <h1 class="h3 mb-3 font-weight-normal">Login</h1>
                                <p>Login to your existing account!</p>
                                <hr>
                            </div>

                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <span class="fa fa-user"></span>
                                    </span>                    
                                </div>
                                <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Username" required="" autofocus="">
                            </div>
                            <br>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <span class="fa fa-lock"></span>
                                    </span>                    
                                </div>
                                <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                            </div>
                            <br>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheckbox" value="remember-me" name="rememberMe">
                                <label class="custom-control-label" for="customCheckbox">Remember me</label>
                            </div>
                            <br>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
                            <p class="mt-3 mb-2 text-muted text-center">© 2019-2020</p>
                        </form>
                        <div class="text-center">Don't have an account? <a href="/register">Create here</a></div>
                        <!-- Login form code end -->
                    </div>
                </div>

                <div class="row" style="margin: 100px 0px 0px 0px" id="site_features">
                    <div class="container text-center">
                        <h2>Main Features</h2>
                        <p>SatoKing is designed with a lot of features to maximize your earning<br>Some of the features are listed below</p>
                        <!-- <p>Some of the features are listed below</p> -->
                        <div class="card-deck">
                            <div class="card bg-dark">
                                <div class="card-body text-center text-light">
                                    <p class="card-text">Some text inside the first card</p>
                                    <p class="card-text">Some more text to increase the height</p>
                                    <p class="card-text">Some more text to increase the height</p>
                                    <p class="card-text">Some more text to increase the height</p>
                                </div>
                            </div>
                            <div class="card bg-dark">
                                <div class="card-body text-center text-light">
                                    <p class="card-text">Some text inside the second card</p>
                                </div>
                            </div>
                            <div class="card bg-dark">
                                <div class="card-body text-center text-light">
                                    <p class="card-text">Some text inside the third card</p>
                                </div>
                            </div>
                            <div class="card bg-dark">
                                <div class="card-body text-center text-light">
                                    <p class="card-text">Some text inside the fourth card</p>
                                </div>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>
</f:view>