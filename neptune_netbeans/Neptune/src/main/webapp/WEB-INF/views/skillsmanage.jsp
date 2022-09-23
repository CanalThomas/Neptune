<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="css/main.css">
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <script src="js/main.js"></script>
  <script src="js/functions.js"></script>
  <title>Neptune APP</title>
</head>

<body>
  <%@ include file="header.jspf" %>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
            <h2 class=""><fmt:message key="message.manageskills" bundle="${ressourcesBundle}"/></h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
            <fmt:message key="message.year" bundle="${ressourcesBundle}"/>
        </div>
        <div class="col-md-6">
            <select name="annee">
                <c:forEach var="item" items="${anneesList}" varStatus="count">
                    <option value="${item.anneeuniversitaireId}" <c:if test="${item.anneeUniversitaireId == anneeCurrent.anneeUniversitaireId}">selected="selected"</c:if>>${anneeuniversitaireLibelle}</option>
                </c:forEach>
            </select>
        </div>
      </div>
    </div>
  </div>
  <%@ include file="footer.jspf" %>
  <script src="js/popper.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>