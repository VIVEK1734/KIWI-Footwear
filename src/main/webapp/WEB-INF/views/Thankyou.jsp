<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for online Shopping!</h1>

                    <p>Your order will be shipped in four business days!</p>
                    
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="login.jsp" class="btn btn-default">OK</a></p>
        </section>
<%
out.println(application.getAttribute("username"));
                   
%>


<%@ include file="/WEB-INF/views/template/footer.jsp" %>