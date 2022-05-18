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
    </style>
</head>
<body class="w3-light-blue">


    <div class="w3-bar w3-theme-d2 w3-left-align w3-teal w3-animate-zoom">
        <span class="w3-bar-item w3-hover-pink w3-cursive" style="font-size: xx-large; height: 80px; width: 200px; text-align: center;"><a href="/gofly">GooFly</a></span>
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white w3-monospace" style="height: 80px;" id="center-inside">Manage Bookings</a>
        <div class="w3-dropdown-hover w3-hide-small">
            <button class="w3-button w3-monospace" style="height: 80px;">Services</button>     
            <div class="w3-dropdown-content w3-card-4 w3-bar-block">
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
        
        <div class="w3-card w3-light-grey w3-round-large" style="height: 700px;margin-top: 50px; display: flex;" >
                <div style="flex-grow: 4;" class="w3-animate-left">
                    <h1 class="w3-monospace w3-center w3-text-brown" >----- Bookings -----</h1>


                </div>
                <div class="w3-panel w3-border-pink w3-leftbar w3-pink w3-center w3-animate-right" style="flex-grow: 1;">
                    <input type="image" src="https://thumbs.dreamstime.com/b/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg" class="w3-circle w3-animate-top" height="150px" width="150px" style="margin-top: 30px;">
                    
                    <form style="padding: 70px; margin-top: -50px;" class="w3-animate-zoom">
                        <div class="w3-center">
                            <label for="name">
                                <span class="w3-cursive" style="font-size: x-large;">Name :</span>
                                <input type="text" name="name" id="name" class="w3-input w3-khaki w3-round w3-center" style="width: 300px; margin: auto; border: 1px solid;" placeholder="Your Name">
                            </label>
                        </div>
                        <br>
                        <div class="w3-center">
                            <label for="city">
                                <span class="w3-cursive" style="font-size: x-large;">Your City :</span>
                                <input list="cities" name="city" id="city" class="w3-input w3-khaki w3-round w3-center" style="width: 300px; margin: auto; border: 1px solid;" placeholder="Your City">
                            </label>
                            <datalist id="cities">
                                <option value="Lucknow">Lucknow</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Pune">Pune</option>
                                <option value="Bangalore">Bangalore</option>
                                <option value="Mumbai">Mumbai</option>
                                <option value="Hyderabad">Hyderabad</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Kolkata">kolkata</option>
                            </datalist>
                        </div>
                        <br>
                        <div class="w3-center">
                            <label for="phone">
                                <span class="w3-cursive" style="font-size: x-large;">Phone no :</span>
                                <input type="tel"  name="phone" id="phone" class="w3-input w3-khaki w3-round w3-center" style="width: 300px; margin: auto; border: 1px solid;" placeholder="XXXX-XXX-XXXX">
                            </label>
                        </div>
                        <br>
                        <div class="w3-center">
                            <label for="email">
                                <span class="w3-cursive" style="font-size: x-large;">Email Id :</span>
                                <input type="email"  name="email" id="email" class="w3-input w3-khaki w3-round w3-center" style="width: 300px; margin: auto; border: 1px solid;" placeholder="Your Email">
                            </label>
                        </div>

                        <br>
                        <div class="w3-center w3-monospace">
                            <input type="submit" value="EDIT" class="w3-button w3-teal w3-round" />
                        </div>
                    </form>

                </div>


            </div>

            <div class="w3-container w3-light-grey" style="margin-top: 150px">
                About Likhna hai idhar zyada kuchh nahi Page ka footer aaega
            </div>
        </div>


 

    


</body>
</html>