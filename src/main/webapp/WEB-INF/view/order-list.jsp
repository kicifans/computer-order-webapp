<%--
  Created by IntelliJ IDEA.
  User: Krists
  Date: 13.05.2021
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- This is .jsp file to display all Orders -->

<html>
<head>
    <title>Computer Order List</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css"/>>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

</head>
<body>
<div class="container">

    <h2 class='text-center'>Computer Order List</h2>

    <div>

        <!-- Table displaying all orders-->
        <table class="table table-hover">
            <tr class="table-primary">
                <th class="align-middle text-center">Order Date</th>
                <th class="align-middle text-center">Computer Specifications</th>
                <th class="align-middle text-center">Justification</th>
                <th class="align-middle text-center">Status</th>
                <th class="align-middle text-center">Change Status</th>
                <th class="align-middle text-center">Delete Order</th>
            </tr>
            <!-- loop over and print orders -->
            <c:forEach var="tempOrder" items="${orders}">

                <!-- construct an "accept" link with order id -->
                <c:url var="acceptLink" value="/computer-order/accept-order">
                    <c:param name="orderId" value="${tempOrder.id}" />
                </c:url>

                <!-- construct an "reject" link with order id -->
                <c:url var="rejectLink" value="/computer-order/reject-order">
                    <c:param name="orderId" value="${tempOrder.id}" />
                </c:url>

                <!-- construct an "delete" link with order id -->
                <c:url var="deleteLink" value="/computer-order/delete-order">
                    <c:param name="orderId" value="${tempOrder.id}" />
                </c:url>


                <tr class="${tempOrder.status}"> <!-- this class is added to change row color based on Orders Status -->
                    <td class="align-middle">${tempOrder.date}</td>
                    <td>
                        <b>CPU:</b>  ${tempOrder.computer.processor} <br>
                        <b>RAM:</b> ${tempOrder.computer.ram} <br>
                        <b>HDD:</b> ${tempOrder.computer.hdd} <br>
                        <b>Video Card:</b> ${tempOrder.computer.videoCard}
                    </td>
                    <td style="width: 25%">${tempOrder.justification}</td>
                    <td class="align-middle">${tempOrder.status}</td>

                    <td class="align-middle">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <!-- button to accept order -->
                            <label class="btn btn-secondary active">
                                <a href="${acceptLink}">
                                    <input type="button" value="Accept" class="btn btn-success btn-sm">
                                </a>
                            </label>
                            <!-- button to reject order -->
                            <label class="btn btn-secondary active">
                                <a href="${rejectLink}">
                                    <input type="button" value="Reject" class="btn btn-danger btn-sm">
                                </a>
                            </label>
                        </div>
                    </td>


                    <td class="align-middle">
                        <!-- button to delete order -->
                        <a href="${deleteLink}">
                            <input type="button" value="Delete" class="btn btn-primary btn-sm">
                        </a>
                    </td>
                </tr>
            </c:forEach>



        </table>

        <!-- button to Make new order -->
        <div class="col-md-12 text-center">
            <input type="button" value="Make New Order"
                   onclick="window.location.href='order-form'; return false;"
                   class="btn btn-primary"/>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>
