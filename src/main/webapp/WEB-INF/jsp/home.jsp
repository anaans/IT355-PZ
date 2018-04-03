

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>


<div id="myCarousel" class="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <!--        <li data-target="#myCarousel" class="active"></li>-->

    </ol>
    <div class="carousel-inner" role="listbox">
        <img class="first-slide home-image" src="<c:url value="/resources/images/bikes.png" />" alt="First slide">
        <div class="container">
            <div class="carousel-caption">
                <h1 style="color:darkblue">Dobro dosli u rent a bike agenciju ! </h1>
                <p style="color:darkblue">Na raspolaganju su vam sve bicikle koje zelite</p>
            </div>
        </div>

    </div>

</div>




<%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>