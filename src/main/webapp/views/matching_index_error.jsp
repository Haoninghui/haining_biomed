<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2019-12-3
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Dashboard Template · Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/static/css/app.css" rel="stylesheet">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>
<body>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Precision Medicine Matching System</a>

</nav>

<div class="container-fluid">
    <div class="row">
        <jsp:include page="nav.jsp" >
            <jsp:param name="active" value="matching_index" />
        </jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h2>Matching</h2>
            </div>
            <div class="table-responsive">
                <c:if test="${validateError != null}">
                    <div><c:out value="${validateError}"></c:out></div>
                </c:if>
                <c:if test="${fn:contains(validateError, 'invalid')}">
                    <div>
                        <div>Please use this command:</div>
                        <code>
                            table_annovar.pl %s /data/ma/humandb -buildver hg19 -out %s -remove -protocol refGene,cytoBand,1000g2015aug_all,1000g2015aug_afr,1000g2015aug_amr,1000g2015aug_eas,1000g2015aug_eur,1000g2015aug_sas,exac03,avsnp150,esp6500siv2_all,esp6500siv2_ea,esp6500siv2_aa,gnomad_exome,dbnsfp35a,gnomad_genome,clinvar_20180603,cosmic70,icgc21,intervar_20180118 -operation g,r,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f  -arg '-hgvs',,,,,,,,,,,,,,,,,,, -nastring . -polish –vcfinput
                        </code>
                        <br>
                        <a href="<%=request.getContextPath()%>/static/Precision Medicine Matching System.pptx">Precision Medicine Matching System.pptx</a>
                    </div>
                </c:if>
            </div>
        </main>
    </div>
</div>
</body>
</html>
