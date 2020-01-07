<%-- 
    Document   : home
    Created on : Sep 10, 2019, 2:06:58 PM
    Author     : Inzimam Tariq
--%>

<%@include file="taglibs.jsp" %>

<f:view>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <title>Sato King</title>
            <%@include file="head_scripts.jsp" %>
            <style >
                .signup-form {
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
            <jsp:include page="navbar.jsp" />
            <div class="container-fluid" style="padding: 40px 40px">

                <div class="row">
                    <div class="col-sm-6">
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>

                <div class="row">
                    
                    <div class="col-sm-6">
                        <!-- Login form code start-->
                        <form class="signup-form bg-dark text-light" action="register" method="Post"
                              oninput="result.value=!!confirm_password.value&&(uPassword.value==confirm_password.value)?'Matched!':'Both password fields must be same!'">
                            <div class="text-center mb-4">
                                <img class="mb-4" src="images/img_avatar2.png" alt="" width="72" height="72">
                                <h2 class="form-signin-heading">Register Account</h2>
                                <p>Please fill in this form to create an account!</p>
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
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <span class="fa fa-envelope"></span>
                                    </span>                    
                                </div>
                                <input type="email" class="form-control" name="email" placeholder="Email Address" required="required">
                            </div>
                            <br>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <span class="fa fas fa-address-card"></span>
                                    </span>                    
                                </div>
                                <input type="text" class="form-control" name="fullName" placeholder="Full Name(name & surname)" required="required">
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
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <span class="fa fa-lock"></span>
                                        <span class="fa fa-check"></span>
                                    </span>                    
                                </div>
                                <input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" required="required">
                            </div>
                            <output name="result" style="text-decoration: blink; color: red"></output>
                            <br>
                            <br>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheckbox" name="example1" required="required">
                                <label class="custom-control-label" for="customCheckbox">I accept the <a href="/terms_of_use">Terms of Use</a> &amp; <a href="privacy_policy">Privacy Policy</a></label>
                            </div> 

                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="switch1" name="over18year">
                                <label class="custom-control-label" for="switch1">I'm 18 Year or above</label>
                            </div>
                            <br>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
                            </div>
                        </form>
                        <div class="text-center">Already have an account? <a href="/login">Login here</a></div>
                        <!-- Registration form code end -->
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