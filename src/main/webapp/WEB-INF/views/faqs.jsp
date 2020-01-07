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
            <%@include file="head_scripts.jsp" %>
        </head>
        <% response.getWriter().flush(); %>
        <body>
            
            <div class="container-fluid" style="padding-top: 50px; padding-bottom: 100px">
                <div class="row">
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
                    <!-- Actual body content -->
                    <div class="col-sm-6" >
                        <h1 class="display-3 d-md-display-4"><b>Frequently Asked Questions</b></h1>
                        <!-- Faq section 1 start -->
                        <br>
                        <div class="text-secondary"><b>General FAQ</b>
                            <div id="accordion">

                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseOne" data-toggle="tooltip" title="Click to see detail">What is ${sitename}?</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            ${sitename} is a free site to earn some bitcoin & altcoins with lots of ways to earn them. Here are some of our features
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">How to earn from this site?/How to use this site?</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">How do you pay?</a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">What is the minimum to withdraw</a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">Where to find latest news about site?</a>
                                    </div>
                                    <div id="collapseFive" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Faq section 1 end -->

                        <!-- Faq section 2 start -->
                        <br>
                        <div class="text-secondary"><b>Account FAQ</b>
                            <div id="accordion2">

                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapse21" data-toggle="tooltip" title="Click to see detail">What is Sato King?</a>
                                    </div>
                                    <div id="collapse21" class="collapse" data-parent="#accordion2">
                                        <div class="card-body">
                                            Sato King is a free site to earn some bitcoin & altcoins with lots of ways to earn them. Here are some of our features
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse22">How to earn from this site?/How to use this site?</a>
                                    </div>
                                    <div id="collapse22" class="collapse" data-parent="#accordion2">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse23">How do you pay?</a>
                                    </div>
                                    <div id="collapse23" class="collapse" data-parent="#accordion2">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse24">What is the minimum to withdraw</a>
                                    </div>
                                    <div id="collapse24" class="collapse" data-parent="#accordion2">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse25">Where to find latest news about site?</a>
                                    </div>
                                    <div id="collapse25" class="collapse" data-parent="#accordion2">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Faq section 2 end -->

                        <!-- Faq section 3 start -->
                        <br>
                        <div class="text-secondary"><b>SK Tokens FAQ</b>
                            <div id="accordion3">

                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapse31" data-toggle="tooltip" title="Click to see detail">What is Sato King?</a>
                                    </div>
                                    <div id="collapse31" class="collapse" data-parent="#accordion3">
                                        <div class="card-body">
                                            Sato King is a free site to earn some bitcoin & altcoins with lots of ways to earn them. Here are some of our features
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse32">How to earn from this site?/How to use this site?</a>
                                    </div>
                                    <div id="collapse32" class="collapse" data-parent="#accordion3">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse33">How do you pay?</a>
                                    </div>
                                    <div id="collapse33" class="collapse" data-parent="#accordion3">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse34">What is the minimum to withdraw</a>
                                    </div>
                                    <div id="collapse34" class="collapse" data-parent="#accordion3">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <a class="collapsed card-link" data-toggle="collapse" href="#collapse35">Where to find latest news about site?</a>
                                    </div>
                                    <div id="collapse35" class="collapse" data-parent="#accordion3">
                                        <div class="card-body">
                                            Lorem ipsum..
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Faq section 3 end -->
                    </div>
                    <!--End of Actual body content-->

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
                <div class="row" style="height: 100px">

                </div>
            </div>
        </body>
    </html>
</f:view>