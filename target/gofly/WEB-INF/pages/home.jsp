<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlyGo</title>
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
        <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white w3-monospace" style="height: 80px;" id="center-inside">Flight Fare</a>
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

    <div class="w3-display-container w3-animate-left" >
        <img class="w3-image" src="https://www.teahub.io/photos/full/19-196774_wallpaper-porthole-window-plane-wing-sky-flight-airplane.jpg" style="height:800px; object-fit: fit; width: max-content;" >
        <div class="w3-display-bottommiddle w3-cursive w3-center w3-bar w3-text-red w3-animate-zoom" style="font-size: xx-large; margin-bottom: 10px;" >
            Fly the friendly skies !
        </div>
    </div>

    <div class="w3-container w3-lime" style="height: 200px;">
        <div class="w3-card w3-light-grey w3-round-large" style="height: 250px;margin-top: 50px;" >
            <form style="display: flex;padding: 70px;" class="w3-animate-zoom">
                <div style="flex-grow: 2;" class="w3-center">
                    <label for="from">
                        <span class="w3-cursive" style="font-size: x-large;">From :</span>
                        <input list="cities" name="from" id="from" class="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="Departure City">
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
                <div style="flex-grow: 2;" class="w3-center">
                    <label for="to">
                        <span class="w3-cursive" style="font-size: x-large;">To :</span>
                        <input list="cities" name="to" id="to" class="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;" placeholder="Arrival City">
                    </label>
                </div>
                <div style="flex-grow: 2;" class="w3-center">
                    <label for="date">
                        <span class="w3-cursive" style="font-size: x-large;">Date :</span>
                        <input type="date" name="date" id="date" class="w3-input w3-khaki w3-round w3-center" style="width: 260px; margin: auto; border: 1px solid;">
                    </label>
                </div>
                <div style="flex-grow: 2; font-size: x-large;" class="w3-cursive">
                    <input type="submit" value="Check Availability" class="w3-button w3-round-large w3-center" style="border: 1px solid; background-color:tomato ; margin-top: 29px;">
                </div>
            </form>

            <div class="w3-panel w3-pale-red w3-leftbar w3-rightbar w3-border-red" style="height: 100px; margin-bottom: 100px; display: flex;border: 1px dashed;">
                <div class="w3-center w3-round w3-serif" id="center-inside" style="flex-grow: 1; font-size: larger;">
                    <i>Delhi </i>
                </div>
                <div class="w3-center w3-round w3-serif" id="center-inside" style="flex-grow: 1; font-size: larger;">
                    <i>Hyderabad </i>
                </div>
                <div class="w3-center w3-round w3-serif" id="center-inside" style="flex-grow: 1; font-size: larger;">
                    12:23 pm
                </div>
                <div class="w3-center w3-round w3-serif" id="center-inside" style="flex-grow: 1; font-size: larger;">
                    1 hr
                </div>
                <div class="w3-center" id="center-inside" style="flex-grow: 1; font-size: larger;">
                    <button class="w3-button w3-red w3-round-xlarge w3-cursive" style="width: 120px; border: 2px solid black; margin: auto;">$140</button>
                </div>

            </div>


            <div class="w3-container w3-light-grey" style="margin-top: 150px">
                About Likhna hai idhar zyada kuchh nahi Page ka footer aaega
            </div>
        </div>
    </div>

 

    


</body>
</html>