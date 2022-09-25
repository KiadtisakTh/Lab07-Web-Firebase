<%@page import="model.BikeInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>เพิ่มจักรยานสำเร็จ</h1>
        <%
            BikeInfo info =(BikeInfo) session.getAttribute("info");
        %>
        ประเภท: <%= info.getBike()%><br/>
        รุ่น: <%= info.getBrand()%><br/>
        น้ำหนัก:: <%= info.getWeight()%><br/>
        ความเร็วสูงสุด: <%= info.getPrice()%><br/>
        <a href="UpdateBike.jsp">แก้ไข</a><br/>
        <a href="SaveToFirebase.jsp">FIREBASE</a>
    </body>
</html>

