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
                            <h1 class="display-4 d-md-display-4"><b>Delete Account</b></h1>
                            <p>Please read this instruction statement carefully before any action as this process is irreversible.
                                Are you sure, you want to delete your account? All your information will be gone and 
                                you would not be able to access your this account again.
                                <br>Later on, if you wish to access this account, Please don't delete it otherwise you will 
                                need to create new account and will have to make a fresh start.
                                <br>If you agree to the above statement then click on <b>Delete Account</b> button to 
                                permanently delete your account.
                            </p>
                            <form action="/deleteUserAccount/${username}" data-toggle="modal" data-target="#myModal" method="Post">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Delete Account</button>

                                <!-- The Modal -->
                                <div class="modal fade text-dark" id="myModal">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Confirm Delete</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <b>We are sorry to see you go.</b>
                                                Are you sure, you want to delete your account? 
                                                All your information will be gone and you would not be able to access your account.
                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-danger" onclick="location.href'/deleteUserAccount${username}'">Delete</button>
                                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                            </div>

                                        </div>
                                    </div>
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

            <script type="text/javascript" src='<c:url value="/js/dailybonus.js"/>'></script>
        </body>
    </html>
</f:view>
