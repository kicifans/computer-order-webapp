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

<!-- This is .jsp file for new Order form -->

<html>
<head>
    <title>Order Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <h2 class='text-center'>Computer Order Form</h2>


    <!-- mapping form to order modelAttribute -->
    <form:form action="save-order" modelAttribute="order" method="post">

        <br>
        <br>

        <!-- select form for processor field -->
        <label class="form-label">Select Processor:</label>
        <select name="computer.processor" class="form-select">
            <option value="Intel Core i5-11400">Intel Core i5-11400</option>
            <option value="Intel Core i5-11600K">Intel Core i5-11600K</option>
            <option value="AMD Ryzen 3 3300X">AMD Ryzen 3 3300X</option>
            <option value="AMD Ryzen 9 5900X">AMD Ryzen 9 5900X</option>
        </select>

        <br>
        <br>

        <!-- select form for videoCard field -->
        <label class="form-label">Select Video card:</label>
        <select name="computer.videoCard" class="form-select">
            <option value="Nvidia GeForce RTX 3090">Nvidia GeForce RTX 3090</option>
            <option value="Nvidia GeForce GTX 1650 Super">Nvidia GeForce GTX 1650 Super</option>
            <option value="AMD Radeon RX 6900 XT">AMD Radeon RX 6900 XT</option>
            <option value="AMD Radeon RX 6700 XT">AMD Radeon RX 6700 XT</option>
        </select>

        <br>
        <br>

        <!-- select form for hdd field -->
        <label class="form-label">Select HDD:</label>
        <select name="computer.hdd" class="form-select">
            <option value="Seagate BarraCuda 3TB">Seagate BarraCuda 3TB</option>
            <option value="Toshiba X300 4TB">Toshiba X300 4TB</option>
            <option value="WD VelociRaptor 250GB">WD VelociRaptor 250GB</option>
            <option value="WD Blue Desktop 500GB">WD Blue Desktop 500GB</option>
        </select>

        <br>
        <br>

        <!-- select form for ram field -->
        <label class="form-label">Select RAM:</label>
        <select name="computer.ram" class="form-select">
            <option value="T-Force Xtreem ARGB DDR4-3600 (2 x 8GB)">T-Force Xtreem ARGB DDR4-3600 (2 x 8GB)</option>
            <option value="Patriot Viper Steel DDR4-4400 (2 x 8GB)">Patriot Viper Steel DDR4-4400 (2 x 8GB)</option>
            <option value="Corsair Vengeance RGB Pro DDR4-3200 (4 x 8GB)">Corsair Vengeance RGB Pro DDR4-3200 (4 x 8GB)</option>
            <option value="G.Skill Trident Z Neo DDR4-3600 (2 x 16GB)">G.Skill Trident Z Neo DDR4-3600 (2 x 16GB)</option>
        </select>

        <br>
        <br>

        <label class="form-label"> Justification: </label>

        <br>
        <br>

        <!-- textarea for justification field -->
        <tr>
            <td><form:textarea  class="form-control" path="justification" rows="5" cols="20" /></td>
            <td><form:errors path="justification" /></td>
        </tr>

        <br>

        <div class="col-md-12 text-center">
            <td><input type="submit" value="Save" class="btn btn-primary"></td>
        </div>

    </form:form>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>
