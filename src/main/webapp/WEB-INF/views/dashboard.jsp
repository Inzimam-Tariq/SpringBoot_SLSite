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
        <body style="padding-bottom: 70px;" onload="changeMembershipBadgeColor()">
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
                        <h1 class="display-4 d-md-display-4"><b></b></h1>
                        <div class="container-fluid"><br>

                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <h4 class="alert-heading">Account not confirmed!</h4>
                                <hr>
                                <p class="mb-0">Your account is not yet confirmed. please check your email.</p>
                            </div>

                            <div class="alert alert-primary alert-dismissible fade show" role="alert">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <h4 class="alert-heading">No Shortlink!</h4>
                                <p>You need to consider this info!</p>
                                <hr>
                                <p class="mb-0">You don't have any shortlink yet. Create one <b><a href="/create_sl">here</a></b></p>
                            </div>


                            <div class="card-deck">
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light">
                                        <label>Account </label> <a href="/logout"><b> Logout</b></a>
                                        <div style="position: absolute; right: 0px; top: 8px; z-index: 2">                                        
                                            <span class="fa-stack fa-lg" >
                                                <i id="mem_badge" class="fas fa-award fa-stack-2x" style="color:#fff;" data-toggle="tooltip" data-placement=" auto" title="Your Current Membership is Silver Membership. You can upgrade to avail more feature!"></i>
                                            </span>
                                        </div>

                                        <div style="position: absolute; left: 5px; top: 8px; z-index: 2">
                                            <button type="button" class="btn btn-primary btn-md">
                                                Notifications <span class="badge badge-light">1</span>
                                            </button>                                                                            
                                        </div>
                                    </div>

                                    <div class="card-body d-flex flex-column text-center text-light">
                                        <img class="mb-4 rounded-circle align-self-center" src="images/img_avatar2.png" alt="" width="72" height="72">
                                        <p class="card-text"><b>Welcome back,</b></p>
                                        <h2>${username}</h2>                                        
                                        <i class="fas fa-cog fa-spin"></i>
                                        <div class="text-center">Change your <a href="<c:url value="/userProfile/${username}" />">Settings here</a></div>
                                        <br>
                                        <div class="card-footer mt-auto">                                            
                                            <div class="progress d-flex d-block">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated" style="width:5%">0%</div>
                                            </div>
                                            <strong>Consumed out of your quota!</strong>
                                        </div>

                                    </div>
                                </div>                                                            
                            </div>
                            <br>
                            <div class="card-deck">
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light"><label>Shortlink Summary</label></div>
                                    <div class="card-body d-flex flex-column justify-content-center align-items-center text-center text-light">
                                        <!--<span class="badge badge-pill rounded-circle" style="background-color: rgba(255, 255, 255, 0.15); width: 48px; height: 48px">-->
                                        <!--    <h2>
                                                    <i class="fas fa-link" ></i>  for changing color apply style="color:rgba(255, 0, 0, 0.6) or color:red
                                                </h2>                                            
                                        </span>-->
                                        <span class="fa-stack fa-lg">
                                            <i class="far fa-circle fa-stack-2x"></i>
                                            <i class="fas fa-link fa-stack-1x"></i>
                                        </span>
                                        <h2>Shortlinks</h2>
                                        <br>
                                        <div class="text-center">Check all your <a href="/links">links here</a></div>
                                        <div class="text-center">Make new shortlink <a href="/create_sl">here</a></div>                                        
                                    </div>
                                </div>
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light"><label>Account Summary</label></div>
                                    <div class="card-body d-flex flex-column justify-content-center align-items-center text-center text-light">
                                        <span class="fa-stack fa-lg">
                                            <i class="far fa-circle fa-stack-2x"></i>
                                            <i class="fas fa-bar-chart fa-stack-1x"></i>
                                        </span>
                                        <h2>Stats</h2>
                                        <div>Total Shortlinks: <label id="shortlink_count">0</label></div>
                                        <div>Shortlinks in 30 days: <label id="shortlink_count">0</label></div>
                                        <div>Shortlinks in 7 days: <label id="shortlink_count">0</label></div>
                                        <div>Shortlinks today: <label id="shortlink_count">0</label></div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="card-deck">
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light"><label>Easy Task - Repeatable</label></div>
                                    <div class="card-body d-flex flex-column justify-content-center align-items-center text-center text-light">                                                                            

                                        <span class="fa-stack fa-lg">
                                            <i class="far fa-circle fa-stack-2x"></i>
                                            <i class="fas fa-gift fa-spin fa-stack-1x"></i>
                                        </span>
                                        <h2>Daily Bonus</h2>
                                        <span class="badge badge-pill rounded alert-warning">
                                            Comming Soon</span>
                                        <div>You can claim the daily bonus once a day. Reset at midnight 00 : 00 o'clock</div>                                                                                
                                        <br>
                                        <div class="card-footer mt-auto">                                            
                                            <button type="submit" class="btn btn-primary btn-lg" onclick="location.href = '#';">Claim</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light"><label>Easy Task - Repeatable</label></div>
                                    <div class="card-body d-flex flex-column justify-content-center align-items-center text-center text-light">                                                                            

                                        <span class="fa-stack fa-lg">
                                            <i class="far fa-circle fa-stack-2x"></i>
                                            <i class="fas fa-shower fa-stack-1x"></i>
                                        </span>
                                        <h2>Faucet</h2>
                                        <div>You can claim from faucet after specific interval. Currently set to 30 minute, may changed later on.</div>
                                        <div>Easy Task</div>
                                        <br>
                                        <div class="card-footer mt-auto">
                                            <button type="submit" class="btn btn-primary btn-lg" onclick="location.href = '#';">Claim</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <div class="card-deck">
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light"><label>High Reward - some can be Repeated</label></div>
                                    <div class="card-body d-flex flex-column justify-content-center align-items-center text-center text-light">                                                                            

                                        <span class="fa-stack fa-lg">
                                            <i class="far fa-circle fa-stack-2x"></i>
                                            <i class="fas fa-tasks fa-stack-1x"></i>
                                        </span>
                                        <h2>Offerwalls</h2>
                                        <span class="badge badge-pill rounded alert-warning">
                                            Comming Soon</span>
                                        <div>You can claim the daily bonus once a day. Reset at midnight 00 : 00 o'clock</div>                                                                                
                                        <br>
                                        <div class="card-footer mt-auto">                                            
                                            <button type="submit" class="btn btn-primary btn-lg" onclick="location.href = '#';">Claim</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card card-block d-flex text-center bg-dark">
                                    <div class="card-header rounded text-light"><label>Easy Task - Repeatable</label></div>
                                    <div class="card-body d-flex flex-column justify-content-center align-items-center text-center text-light">                                                                            

                                        <span class="fa-stack fa-lg">
                                            <i class="far fa-circle fa-stack-2x"></i>
                                            <i class="fas fa-shower fa-stack-1x"></i>
                                        </span>
                                        <h2>Faucet</h2>
                                        <div>You can claim from faucet after specific interval. Currently set to 30 minute, may changed later on.</div>
                                        <div>Easy Task</div>
                                        <br>
                                        <div class="card-footer mt-auto">
                                            <button type="submit" class="btn btn-primary btn-lg" onclick="location.href = '#';">Claim</button>
                                        </div>
                                    </div>
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

            <script type="text/javascript" src='<c:url value="/js/sl_scripts.js"/>'></script>
        </body>
    </html>
</f:view>
