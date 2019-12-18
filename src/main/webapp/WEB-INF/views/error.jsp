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
            <title>Error: SatoKing</title>
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
                    <div class="col-sm-6 d-flex flex-column justify-content-center align-items-center" >
                        <h1 class="display-4 d-md-display-4"><b>Something went wrong</b></h1>
                        <div class="container-fluid d-flex flex-column justify-content-center align-items-center"><br>
                            <p>Our system detected an invalid visit or the visit key has expired. Please try again!</p>

                            <button class="btn btn-lg btn-primary" id="submit" onclick="location.href ='/dashboard'" >Go To Dashboard</button>
                        
                        <img class="mb-4 rounded align-self-center" src="https://media.giphy.com/media/RHzqdZJztOu7S/giphy.gif" alt="The requested source not found!">

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
