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
                    <!--/actual content body -->
                    <div class="col-sm-6" >
                        <div class="container-fluid d-flex flex-column"><br>
                            <h2><b>Welcome Mail from {sitename}</b></h2>
                            <br>
                            <img class="mb-4" src="images/img_avatar2.png" alt="" width="720" height="80">
                            <p><b>{username}</b> nice to have you as the member of {sitename}. This is an auto 
                                generated email to inform you that you have successfully register an account on
                                {sitename}. Please do not reply to this email.

                            </p>
                            <p>
                                You can enable your account by clicking on "Enable Account" button And login to your 
                                account by clicking "Login" button given below.
                            </p>
                            <br>
                            <div class="d-flex flex-row justify-content-center">
                                <button type="submit" class="btn btn-primary" 
                                        onclick="location.href = '/createSl'">Login</button>
                                <button type="submit" class="btn btn-success" 
                                        style="margin-left: 5px;" onclick="location.href = '/dashboard'">
                                    Enable Account
                                </button>
                            </div>
                            <br>
                            <p>
                                Querious about how this site work? Check out our <a href="http://example.com">FAQs page</a>.
                            </p>
                            <br><br><br>
                            <p style="color: #ccc">You are receiving this email because you are a member of {sitename} and you agreed
                                to receive our important communication emails. A key part of being successful is 
                                communication. We take your success very seriously and therefore may send you important
                                emails time to time.</p>
                        </div>
                    </div>
                </div>
            </div>

        </body>
    </html>
</f:view>
