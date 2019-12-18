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
            <div class="container-fluid">
                <div class="row d-flex">
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

                    <div class="col-sm-6 d-flex">
                        <h1 class="display-4 d-md-display-4"><b></b></h1>
                        <div class="container-fluid"><br>
                            <!-- User profile form code start-->
                            <form:form modelAttribute="user" class="signup-form bg-dark text-light d-flex flex-column align-items-center" action="submitProfile" method="Post"
                                  oninput="result.value=!!confirm_password.value&&(uPassword.value==confirm_password.value)?'Matched!':'Both password fields must be same!'">
                                <div class="text-center mb-4">
                                    <img class="mb-4" src="images/img_avatar2.png" alt="" width="72" height="72">
                                    <h2 class="form-signin-heading"></h2>
                                    <p>Here is your Profile Information</p>
                                    <hr>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fa-user"></span>
                                        </span>                    
                                    </div>
                                    <form:input type="text" class="form-control" name="username" path="username" disabled="true" placeholder="Username" autofocus=""/>
                                </div>
                                <br>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fa-envelope"></span>
                                        </span>                    
                                    </div>
                                    <form:input type="email" class="form-control" name="email" path="email" placeholder="Email Address"/>
                                </div>
                                <br>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fas fa-address-card"></span>
                                        </span>                    
                                    </div>
                                    <form:input class="form-control" name="fullName" path="fullName" placeholder="Full Name(name & surname)"/>
                                </div>
                                <br>
                                <br>
                                <br>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fa-lock"></span>
                                        </span>                    
                                    </div>
                                    <input type="password" class="form-control" name="oldPassword" placeholder="Old Password Here">
                                </div>
                                <br>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fa-lock"></span>
                                        </span>                    
                                    </div>
                                    <input type="password" class="form-control" name="newPassword" placeholder="New Password Here">
                                </div>
                                <br>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fa-lock"></span>
                                            <span class="fa fa-check"></span>
                                        </span>                    
                                    </div>
                                    <input type="password" class="form-control" name="confirm_password" placeholder="Confirm New Password">
                                </div>
                                <output name="result" style="text-decoration: blink; color: red"></output>
                                <br>

                                <br>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg">Update Profile</button>
                                </div>
                            </form:form>
                            <!-- Registration form code end -->
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
        </body>
    </html>
</f:view>