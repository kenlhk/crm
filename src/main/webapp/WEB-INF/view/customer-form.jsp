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

    <div id="container" class = "ps-3">
        <h4 class="mt-3 mb-3">Save Customer</h4>

        <form:form action="saveCustomer" modelAttribute="customer" method="post">

            <!-- associate customer id with form data -->
            <form:hidden path="id"/>

            <table>
                <tbody>
                    <tr>
                        <td><label class="form-label">First name:</label></td>
                        <td><form:input path="firstName" cssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td><label class="form-label">Last name:</label></td>
                        <td><form:input path="lastName" cssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td><label class="form-label">Phone no.:</label></td>
                        <td><form:input path="phoneNo" cssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td><label class="form-label">Address:</label></td>
                        <td><form:input path="address" cssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td><label class="form-label">Email:</label></td>
                        <td><form:input path="email" cssClass="form-control"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Save" class="save"/></td>
                    </tr>
                </tbody>
            </table>
        </form:form>

        <p>
            <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
        </p>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"/>
</body>
</html>
