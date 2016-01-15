function locate() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {
    console.log(position.coords);
    document.getElementById('long').value = position.coords.longitude;
    document.getElementById('lat').value = position.coords.latitude;
    document.getElementById('long2').value = position.coords.longitude;
    document.getElementById('lat2').value = position.coords.latitude;
    document.getElementById('long3').value = position.coords.longitude;
    document.getElementById('lat3').value = position.coords.latitude;
    document.getElementById('long4').value = position.coords.longitude;
    document.getElementById('lat4').value = position.coords.latitude;
    console.log(document.getElementById('lat').value);
}