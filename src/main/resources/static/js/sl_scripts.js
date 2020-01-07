
function startCountdown() {
    // Set the date we're counting down to
    var btn = document.getElementById("submit");
    var countdownLbl = document.getElementById("countdownLbl");
    btn.disabled = true;

    let date = new Date();
    date.setSeconds(date.getSeconds() + getRandomInt());

    let countDownDate = date.getTime();

    // Update the count down every 1 second
    let x = setInterval(function () {

        // Get today's date and time
        let now = new Date().getTime();

        // Find the distance between now and the count down date
        let distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        //      let days = Math.floor(distance / (1000 * 60 * 60 * 24));
        let hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        let minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        let seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Display the result in the element with id="demo"
        countdownLbl.innerHTML = "Please wait " + seconds + "s ";

        // If the count down is finished, write some text
        if (distance < 0) {
            clearInterval(x);
            countdownLbl.innerHTML = "Press the Continue button!";
            btn.disabled = false;
        }
    }, 1000);
}

function getRandomInt() {
    let min = 1;
    let max = 5;
    return Math.floor(Math.random() * (max - min)) + min;
}

function changeMembershipBadgeColor() {
    var goldColor = "#ffd700";
    var brownColor = "#964B00";
    var silverColor = "#ffffff";
    document.getElementById("mem_badge").style.color = silverColor;

    $('[data-toggle="tooltip"]').tooltip();
}

function copyShortLink(id) {
//    var copyBtn = document.getElementById('copy_' + id);
    var input = document.getElementById(id);
    var td = document.getElementById("copyTd_" + id);
    /* Select the text field */
    td.hidden = false;
    input.select();
    input.setSelectionRange(0, 99999); /*For mobile devices*/

    /* Copy the text inside the text field */
    document.execCommand("copy");
//    copyBtn.innerHTML = 'Copied';
    td.hidden = true;
}