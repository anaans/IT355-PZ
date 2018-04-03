

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>


            <p class="lead">Izmenite informacije o biciklu ovde:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct"
                   method="post" commandName="product" enctype="multipart/form-data">

            <form:hidden path="productId" value="${product.productId}" />

            <div class="form-group">
                <label for="name">Ime: </label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
            </div>

            <div class="form-group">
                <label for="category">Kategorija: </label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="odrasli" />Odrasli</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="deca" />Deca</label>
                
            </div>

            <div class="form-group">
                <label for="description">Opis: </label>
                <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
            </div>

            <div class="form-group">
                <label for="productPrice"> Cena dana: </label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="productPrice" class="form-Control"  />
            </div>

            <div class="form-group">
                <label for="status">Status: </label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Na stanju: </label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Proizvodjac: </label>
                <form:input path="productManufacturer" id="manufacturer" name="productManufacturer" class="form-Control" value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label for="productImg">Stavi sliku</label>
                <input id="productImg" type="file" class="form-control" name="file" />
            </div>

            <br/><br/>

            <input type="submit" value="Prihvati" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Odustani</a>

        </form:form>


        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>
