<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Customer</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body class="m-3">
<div id="wrapper" class="p-3 bg-primary text-light">
    <div id="header">
        <h3>CRM - Customer Relationship Manager</h3>
    </div>
</div>

<div id="container" class="ps-3">
    <h4 class="mt-3 mb-3 text-dark fw-bolder">Save Customer</h4>

    <form:form action="saveCustomer" modelAttribute="customer" method="post">

        <!-- associate customer id with form data -->
        <form:hidden path="id"/>

        <div class="row">
            <div class="col-md-3">
                <label class="form-label">First name:</label>
                <form:input path="firstName" cssClass="form-control"/>
            </div>
            <div class="col-md-3">
                <label class="form-label">Last name:</label>
                <form:input path="lastName" cssClass="form-control"/>
            </div>
        </div>

    <div class="row">
        <div class="col-md-3">
        <label class="form-label">Phone no.:</label>
        <form:input path="phoneNo" cssClass="form-control"/>
        </div>
    </div>

    <div class="row">
        <div class="col-10">
        <label class="form-label">Address:</label>
        <form:input path="address" cssClass="form-control"/>
        </div>
    </div>

    <div class="row">
        <div class="col-3">
        <label class="form-label">Email:</label>
        <form:input path="email" cssClass="form-control"/>
        </div>
    </div>

        <input type="submit" value="Save" class="save mt-3 mb-3 btn btn-primary"/>

    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/customer/list" class="text-decoration-none">Back to List</a>
    </p>
</div>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"/>
</body>
</html>
