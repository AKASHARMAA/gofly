<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GooFly-Register</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
    <style>
        #center-inside {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .center-text{
            text-align: center;
        }
        
        .formErrors{
        	color: red;
        }
    </style> 
</head>
<body class="w3-light-blue">

    <div class="w3-bar w3-theme-d2 w3-left-align w3-teal w3-animate-zoom">
        <span class="w3-bar-item w3-hover-pink w3-cursive" style="font-size: xx-large; height: 80px; width: 200px; text-align: center;"><a href="/gofly">GooFly</a></span>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white w3-monospace" style="height: 80px;" id="center-inside">Flight Fare</a>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white w3-monospace" style="height: 80px;" id="center-inside">Manage Bookings</a>
        <div class="w3-dropdown-hover w3-hide-small">
            <button class="w3-button w3-monospace" style="height: 80px;">Services</button>     
            <div class="w3-dropdown-content w3-card-4 w3-bar-block w3-leftbar w3-border-pink" >
                <a href="#" class="w3-bar-item w3-button">Service 1</a>
                <a href="#" class="w3-bar-item w3-button">Service 2</a>
                <a href="#" class="w3-bar-item w3-button">Service 3</a>
            </div>
        </div>

        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white w3-right w3-monospace" style="height: 80px; margin-right: 30px;width: 100px;" id="center-inside">Login</a>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white w3-right w3-monospace" style="height: 80px;" id="center-inside">Contact Us</a>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white w3-right w3-monospace" style="height: 80px;" id="center-inside">FAQs</a>

    </div>


    <div class="w3-container w3-lime" style="height: 400px;">
        
        <div class="w3-card w3-animate-right w3-light-grey w3-round-large" style="height: 800px;margin-top: 50px;" >
            <h1 class="w3-monospace w3-center" style="padding-top: 35px;">Please Register Here : </h1>
            <form:form style="padding: 70px; margin-top: -50px;" action="registerme" class="w3-animate-zoom" method="post" modelAttribute="dto" >
                <div class="w3-center">
                    <label for="name">
                        <span class="w3-cursive" style="font-size: x-large;">Name :</span>
                        <form:input path="name" id="name" cssClass="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="Your Name" />
                        <form:errors path="name" cssClass="formErrors"/>
                    </label>
                </div>
                
                <br>
                <div class="w3-center">
                    <label for="username">
                        <span class="w3-cursive" style="font-size: x-large;">Username :</span>
                        <form:input path="userName" id="username" cssClass="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="Create Username" />
                    	<form:errors path="userName" cssClass="formErrors"/>
                    </label>
                </div>
                
                <br>
                <div class="w3-center">
                    <label for="email">
                        <span class="w3-cursive" style="font-size: x-large;">Password :</span>
                        <form:password path="password" id="email" class="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="create password" />
                    	<form:errors path="password" cssClass="formErrors"/>
                    </label>
                </div>

                <br>
                <div class="w3-center">
                    <label for="city">
                        <span class="w3-cursive" style="font-size: x-large;">Your City :</span>
                        <form:select path="city" id="city" class="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="Your City">
                        	<form:option value="Lucknow" label="Lucknow" />
                        	<form:option value="Delhi" label="Delhi" />
                        	<form:option value="Pune" label="Pune" />
                        	<form:option value="Bangalore" label="Bangalore" />
                        	<form:option value="Mumbai" label="Mumbai" />
                        	<form:option value="Hyderabad" label="Hyderabad" />
                        	<form:option value="Chennai" label="Chennai" />
                        	<form:option value="Kolkata" label="Kolkata" />
                    	</form:select>
                    	<form:errors path="city" cssClass="formErrors"/>
                    </label>
                </div>

                <br>
                <div class="w3-center">
                    <label for="phone">
                        <span class="w3-cursive" style="font-size: x-large;">Phone no :</span>
                        <form:input  path="phoneNumber" id="phone" class="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="XXXX-XXX-XXXX"/>
                    	<form:errors path="phoneNumber" cssClass="formErrors"/>
                    </label>
                </div>

                <br>
                <div class="w3-center">
                    <label for="email">
                        <span class="w3-cursive" style="font-size: x-large;">Email Id :</span>
                        <form:input path="email" id="email" class="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="Your Email" />
                    	<form:errors path="email" cssClass="formErrors"/>
                    </label>
                </div>
                <br>
                
                
                <div class="w3-center w3-monospace">
                    <input type="submit" value="REGISTER" class="w3-button w3-teal w3-round" />
                </div>

            </form:form>
            </div>

            <div class="w3-container w3-light-grey" style="margin-top: 150px">
                About Likhna hai idhar zyada kuchh nahi Page ka footer aaega
            </div>

        </div>


 

    


</body>
</html>