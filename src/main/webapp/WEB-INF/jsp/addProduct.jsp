
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Dodaj bicikl</h1>


            <p class="lead">Popuni polja da bi dodao bicikl:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"
                   method="post" commandName="product" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Naziv: </label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="productName" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="description">Opis: </label>
                <form:textarea path="productDescription" id="productDescription" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="category">Kategorija: </label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="Limuzina" />Limuzina</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="Hecbek" />Hecbek</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="Karavan" />Karavan</label>
            </div>

            <div class="form-group">
                <label for="price">Cena dana: </label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="productPrice" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="status">Status: </label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Na stanju:</label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="manufacturer">Proizvodjac: </label>
                <form:input path="productManufacturer" id="productManufacturer" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Stavi sliku</label>
                <input id="productImage" type="file" class="form-control" name="file"/>
            </div>


            <br/><br/>

            <input type="submit" value="Prihvati" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Odustani</a>

        </form:form>

        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>