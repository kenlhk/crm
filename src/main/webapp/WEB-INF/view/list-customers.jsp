<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>List Customers</title>
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

    <div id="container">
        <div id="content">

            <input type="button" value="Add Customer"
                   onclick="window.location.href='formForAdd'; return false;"
                   class="add-button btn btn-outline-secondary mt-3 mb-3"/>

            <table class="table table-hover">
                <tr class="table-secondary">
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>

<%--                loop over and print customer--%>
                <c:forEach var="tempCustomer" items="${customers}">

                    <!-- update link with customer id -->
                    <c:url var="updateLink" value="/customer/formForUpdate">
                        <c:param name="customerID" value="${tempCustomer.id}"/>
                    </c:url>

                    <!-- delete link with customer id -->
                    <c:url var="deleteLink" value="/customer/delete">
                        <c:param name="customerID" value="${tempCustomer.id}"/>
                    </c:url>


                    <tr>
                        <td>${tempCustomer.firstName}</td>
                        <td>${tempCustomer.lastName}</td>
                        <td>${tempCustomer.phoneNo}</td>
                        <td>${tempCustomer.address}</td>
                        <td>${tempCustomer.email}</td>
                        <td>
                            <a href="${updateLink}" class="link-primary text-decoration-none">Update</a>
                            |
                            <a href="${deleteLink}"
                            onclick="if(!confirm('Are you sure to delete this customer?')) return false"
                            class="link-danger text-decoration-none">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"/>
</body>
</html>
