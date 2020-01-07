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
        </head>
        <% response.getWriter().flush(); %>
        <body>

            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="/dashboard">Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/login">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/register">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/faqs">FAQs</a>
                        </li>    
                    </ul>
                </div>  
            </nav>
            <br><br><br>

        </body>
    </html>
</f:view>
