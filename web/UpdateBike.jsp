<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.BikeInfo" %>
<!DOCTYPE html>
<html>
    <body>
        <h1>แก้ไขรถ</h1>
        <%
            BikeInfo info = (BikeInfo) session.getAttribute("info");
        %>
        <form action="AddNewBike">
            ประเภท:<input type="text" name="bike" value="<%= info.getBike()%>"><br/>
            รุ่น: <input type="text" name="brand" value="<%= info.getBrand()%>"><br/>
            น้ำหนัก: <input type="text" name="weight" value="<%= info.getWeight()%>"><br/>
            ราคา: <input type="text" name="price" value="<%= info.getPrice()%>"><br/>
            <input type="submit" value="แก้ไข">
        </form>
        <% session.removeAttribute("BikeInfo"); %>
    </body>
</html>