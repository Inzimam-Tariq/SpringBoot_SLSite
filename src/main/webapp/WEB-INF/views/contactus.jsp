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
                .form-signin {
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

                        <div class="container-fluid d-flex flex-column align-items-center justify-content-center">
                            <h1 class="display-4 d-md-display-4"><b>Contact Us</b></h1>
                            <p>Please provide the concise/comprehensive information about the matter And avoid unnecessary details.
                                If you really think greater detail is needed only than provide more detail(all detail you think is necessary).
                            </p>
                            <form class="form-signin bg-dark text-light" action="process_login" method="POST">
                                <div class="text-center mb-4">
                                    <!--<img class="mb-4" src="images/img_avatar2.png" alt="" width="72" height="72">-->
                                    <h1 class="h3 mb-3 font-weight-normal">Contact</h1>
                                    <p>Please fill the following fields!</p>
                                    <hr>
                                </div>

                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fa-user"></span>
                                        </span>                    
                                    </div>
                                    <input type="text" id="inputEmail" name="username" 
                                           class="form-control" placeholder="Username - Optional">
                                </div>
                                <br>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="fa fa-address-card"></span>
                                        </span>                    
                                    </div>
                                    <input type="name" class="form-control" name="fullName" 
                                           placeholder="Full name i.e. Leo Massi" required="required">
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="comment">Content Details:</label>
                                    <textarea class="form-control" id="comment" rows="8"
                                              autofocus=""></textarea>
                                </div>                               
                                <br>
                                <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
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

            <script type="text/javascript" src='<c:url value="/js/dailybonus.js"/>'></script>
        </body>
    </html>
</f:view>
