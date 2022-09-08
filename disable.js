
// Source Disable code

//var message= "NoRightClicking is allowed in our website";
function arpianDisableClick() {
    if (document.all) {
        // alert(message); //Remove this line if you don’t want alert message
        return false;
    }
}
function arpianNoRightClick(e) {
    if (document.layers || (document.getElementById && !document.all)) {
        if (e.which == 2 || e.which == 3) {
            // alert(message); //Remove this line if you don’t want alert message
            return false;
        }
    }
}
if (document.layers) {
    document.captureEvents(Event.MOUSEDOWN);
    document.onmousedown = arpianNoRightClick;
} else {
    document.onmouseup = arpianNoRightClick;
    document.oncontextmenu = arpianDisableClick;
}
document.oncontextmenu = new Function("return false")

document.onkeydown = function (e) {
    // var message = "Content is protected\nYou cannot view the page source.";
    if (e.ctrlKey &&
    (e.keyCode === 67 ||
    e.keyCode === 86 ||
    e.keyCode === 85 ||
    e.keyCode === 117)) {
        // alert(message);
        return false;
    } else {
        return true;
    }
};
$(document).keypress("u", function (e) {
    if (e.ctrlKey) {
        return false;
    }
    else {
        return true;
    }
});

//=============================================================
//disable F12 Key and Ctrl + shift + I combination

$(document).keydown(function (event) {
    // var message = "Content is protected\nYou cannot view the Dev Tools.";
    if (event.keyCode == 123) { // Prevent F12
        //  alert(message);
        return false;
    } else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) { // Prevent Ctrl+Shift+I
        // alert(message);
        return false;
    }
});