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

                            <%--<c:if test="${!request.getAttribute("ip").isEmpty()}">--%>
                            <div class="alert alert-success alert-dismissible fade show">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Success!</strong>
                                <p>IP:  <c:out value = "${ip}"/></p>
                                <p>IP City:  <c:out value = "${city}"/></p>
                            </div>
                            <%--</c:if>--%>
                            
                            <form class="d-flex flex-column justify-content-center align-items-center" action="home" method="Post">
                                <h2 class="text-primary"><label id="countdownLbl"/></h2>
                                <button class="btn btn-lg btn-primary" id="submit">Continue</button>
                            </form>
                            
                            <div class="text-center">Short Your URL by clicking <a href="/shortUrl">Short URL here</a></div>
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
