
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Registracija</h1>

            <p class="lead">Molimo Vas da popunite polja za registraciju:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" commandName="customer">

            <h3>Informacije o Vama:</h3>

            <div class="form-group">
                <label for="name">Ime: </label>
                <form:errors path="customerName" cssStyle="color: #ff0000" />
                <form:input path="customerName" id="name" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="email">Email: </label>
                <span style="color: #ff0000">${emailMsg}</span>
                <form:errors path="customerEmail" cssStyle="color: #ff0000" />
                <form:input path="customerEmail" id="email" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="phone">Telefon: </label>
                <form:input path="customerPhone" id="phone" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="name">Ulica: </label>
                <form:errors path="customerStreetName" cssStyle="color: #ff0000" />
                <form:input path="customerStreetName" id="street" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="name">Grad: </label>
                <form:errors path="customerCity" cssStyle="color: #ff0000" />
                <form:input path="customerCity" id="city" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="name">Drzava: </label>
                <form:errors path="customerCountry" cssStyle="color: #ff0000" />
                <form:input path="customerCountry" id="city" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="username">Username: </label>
                <span style="color: #ff0000">${usernameMsg}</span>
                <form:errors path="username" cssStyle="color: #ff0000" />
                <form:input path="username" id="username" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="password">Password: </label>
                <form:errors path="password" cssStyle="color: #ff0000" />
                <form:password path="password" id="password" class="form-Control" />
            </div>


            <br/>

            <br/>

            <br/>

            <input type="submit" value="Prihvati" class="btn btn-default">
            <a href="<c:url value="/" />" class="btn btn-default">Odustani</a>

        </form:form>

        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>