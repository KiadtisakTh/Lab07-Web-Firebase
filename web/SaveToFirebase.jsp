<%-- 
    Document   : SaveToFirebase
    Created on : Jul 23, 2022, 10:28:49 AM
    Author     : Kiadtisak-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.BikeInfo"%>

<%  BikeInfo info = (BikeInfo) session.getAttribute("info");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.6.3/firebase-database.js"></script>

        <!-- TODO: Add SDKs for Firebase products that you want to use
             https://firebase.google.com/docs/web/setup#available-libraries -->

        <script>
            // Your web app's Firebase configuration
            const firebaseConfig = {
                apiKey: "AIzaSyBDqasRM4B7cheWM_DFOLSzjfoCE73BFA4",
                authDomain: "bikeproject-c6ff6.firebaseapp.com",
                projectId: "bikeproject-c6ff6",
                storageBucket: "bikeproject-c6ff6.appspot.com",
                messagingSenderId: "898137598015",
                appId: "1:898137598015:web:43db55310c4b514c30b08a"
            };

            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
        </script>
    </head>
    <body>
        <input type="button" value="save" onclick="save_Bike();">
        <script>
            var databaseRef = firebase.database().ref('BikeProject/');

            window.save_Bike = function () {
                var uid = firebase.database().ref().child('Bike').push().key;

                var data = {
                    Bike_Info: uid,
                    Bike_bike: '<%= info.getBike()%>',
                    Bike_brand: '<%= info.getBrand()%>',
                    Bike_weight: '<%= info.getWeight()%>',
                    Bike_price: '<%= info.getPrice()%>',
                }

                var updates = {};
                updates['/ฺBikeInfo/' + uid] = data;
                firebase.database().ref().update(updates);

                alert('Bike is created successfully!');
                reload_page();
            }

            function reload_page() {
                window.location.reload();
            }

        </script>
    </body>
</html>
