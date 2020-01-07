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
            <style type="style.css">
                /*                #countdownLbl{
                                    background-color: #f2f2f2;
                                }*/
            </style>
            <script>
                $(document).ready(function () {
                    $('[data-toggle="tooltip"]').tooltip();
                });
            </script>
        </head>
        <% response.getWriter().flush(); %>
        <body style="padding-bottom: 70px;">

            <div class="container-fluid" style="padding-top: 30px">
                <div class="row">
                    <!--/left advert space-->
                    <div class="col-sm-3 d-none d-sm-block" style="background-color:#F8F8F8;">
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
                            <h1 class="display-4 d-md-display-4"><b>URL Details</b></h1>
                            <p>All the URLs that you have shorten till now are listed in the table below.</p>
                            <!--<p>The context path is: ${pageContext.request.serverName}</p>-->
                            <c:set var="baseUrl" value="${baseUrl}" />
                            <p>The base URL is: ${baseUrl}</p>
                            <%--<c:set var="flag" value="${(true)? true : false}"/>--%>
                            <div id="tableContainer">
                                <div class="d-flex flex-row justify-content-center">
                                    <button type="submit" class="btn btn-primary" onclick="location.href='/createSl'">Do more shortlink</button>
                                    <button type="submit" class="btn btn-success" 
                                            style="margin-left: 2px;" onclick="location.href='/dashboard'">Go to dashboard</button>
                                </div>
                                <table
                                    class="table table-responsive table-striped table-hover table-bordered" style='vertical-align:middle'>
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Id</th>
                                            <th>Destination Url</th>
                                            <th>Short URL</th>
                                            <!--<th width="20%" colspan="3">Actions</th>-->
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="links" items="${data}">
                                            <tr>
                                                <td>${links.getId()}</td>
                                                <td>${links.getDestinationUrlLink()}</td>
                                                <td>${links.getShortUrlLink()}</td>
                                                <td id="copyTd_${links.getId()}" hidden="">
                                                    <input type="text" id="${links.getId()}" value="${baseUrl}/${links.getShortUrlLink()}">
                                                </td>
                                                <td><button type="submit" id="copy_${links.getId()}" 
                                                            class="btn btn-success btn-block" 
                                                            onclick="copyShortLink(${links.getId()})"
                                                            data-toggle="tooltip" data-placement="top" title="Click to copy shortlink!">
                                                        Copy
                                                    </button>

                                                </td>
                                                <!--<td><button type="submit" class="btn btn-primary btn-block">Edit</button></td>-->
                                                <!--<td><button type="submit" class="btn btn-danger btn-block">Delete</button></td>-->
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/right advert space-->
                    <div class="col-sm-3" style="background-color:#F8F8F8;">
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
