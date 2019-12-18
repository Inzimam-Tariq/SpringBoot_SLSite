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
                        <div class="container-fluid"><br>
                            <h1 class="display-4 d-md-display-4"><b>Privacy Policy</b></h1>
                            <br>
                            <p>We collect basic information from visitors to our website, and some personal information from our users. We only require the minimum amount of personal information necessary from you. Normally, we do not share your information with anyone But in some case we may share your personal information to run our site. The example of this case can be <b>The Legal Authorities</b>. No matter where you are, where you live, or what your citizenship is, we have same standard for all the users and do not discriminate in this regard.</p>
                            <p><b>See also</b> the <a href="/terms_of_use">Terms of Use</a></p>
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
