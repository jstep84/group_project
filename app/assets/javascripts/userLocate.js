function locate() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {

    document.cookie="latitude="+ position.coords.latitude
    document.cookie="longitude="+ position.coords.longitude

}