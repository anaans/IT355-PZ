
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>

<script>
    $(document).ready(function () {
        $('#example').DataTable({
             scrollY: '50vh',
             scrollCollapse: true,
             paging: false
        });
    });
</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Stranica za menadzment kupaca</h1>

            <p class="lead">Ovo je stranica gde mozete viteti informacije o kupcima.</p>
            <a href="<spring:url value="/admin" />" class="btn btn-default">Nazad na admin panel</a>
        </div>

        <table id="example" class="display" cellspacing="0" width="100%">
            <thead> 
                <tr class="bg-info">
                    <th>Ime</th>
                    <th>Email</th>
                    <th>Telefon</th>
                    <th>Username</th>
                    <th>Aktivan</th>
                </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>
        </table>

        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>