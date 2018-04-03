
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Bicikl</h1>


            <p class="lead">Ovde se nalaze informacije o nasim biciklima: </p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="${product.productImage}" alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p><strong>Proizvodjac</strong>: ${product.productManufacturer}</p>
                    <p><strong>Kategorija</strong>: ${product.productCategory}</p>
                    <p><strong>Cena(po danu)</strong>: ${product.productPrice} RSD</p>
                    <p><strong>Opis</strong>:${product.productDescription}</p>
                    <br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>


                    <a href="<c:url value = "${url}/all" />" class="btn btn-default">Nazad</a>
                    <a href="${pageContext.request.contextPath}/customer/cart/buy/${product.productId}" class="btn btn-warning btn-large"><span class="glyphicon glyphicon-shopping-cart"></span> Rentiraj </a>
                    <a href="<spring:url value="/customer/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> Pogledaj korpu </a>


                </div>
            </div>
        </div>



        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>