function clock() {

    //Save the times in variables

    var today = new Date();
    var weekday = new Array(7);
    weekday[0] = "Sunday";
    weekday[1] = "Monday";
    weekday[2] = "Tuesday";
    weekday[3] = "Wednesday";
    weekday[4] = "Thursday";
    weekday[5] = "Friday";
    weekday[6] = "Saturday";

    var day = weekday[d.getDay()];
    var hours = today.getHours();
    var minutes = today.getMinutes();
    var seconds = today.getSeconds();


    //Set the AM or PM time

    if (hours >= 12) {
        meridiem = " PM";
    }
    else {
        meridiem = " AM";
    }


    //convert hours to 12 hour format and put 0 in front
    if (hours > 12) {
        hours = hours - 12;
    }
    else if (hours === 0) {
        hours = 12;
    }

    //Put 0 in front of single digit minutes and seconds

    if (minutes < 10) {
        minutes = "0" + minutes;
    }
    else {
        minutes = minutes;
    }

    if (seconds < 10) {
        seconds = "0" + seconds;
    }
    else {
        seconds = seconds;
    }

    document.getElementById("clock").innerHTML = (hours + ":" + minutes + ":" + seconds + meridiem + " [" + n + "]");

}


setInterval('clock()', 1000);