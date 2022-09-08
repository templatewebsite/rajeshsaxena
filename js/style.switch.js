"use strict";var myCursor=jQuery(".mouse-cursor");if(myCursor.length&&$("body")){const r=document.querySelector(".cursor-inner"),e=document.querySelector(".cursor-outer");let o,s=0,t=!1;window.onmousemove=function(i){t||(e.style.transform="translate("+i.clientX+"px, "+i.clientY+"px)"),r.style.transform="translate("+i.clientX+"px, "+i.clientY+"px)",o=i.clientY,s=i.clientX},$("body").on("mouseenter","a,.trigger, .cursor-pointer",function(){r.classList.add("cursor-hover"),e.classList.add("cursor-hover")}),$("body").on("mouseleave","a,.trigger, .cursor-pointer",function(){$(this).is("a")&&$(this).closest(".cursor-pointer").length||(r.classList.remove("cursor-hover"),e.classList.remove("cursor-hover"))}),r.style.visibility="visible",e.style.visibility="visible"}var wrapper=jQuery(".gaspar"),button=jQuery(".style-switch-wrapper .cursor li a"),show=jQuery(".style-switch-wrapper .cursor li a.show"),hide=jQuery(".style-switch-wrapper .cursor li a.hide");button.on("click",function(){var r=jQuery(this);return r.hasClass("showme")||(button.removeClass("showme"),r.addClass("showme")),!1}),show.on("click",function(){wrapper.attr("data-magic-cursor","")}),hide.on("click",function(){wrapper.attr("data-magic-cursor","hide")});var isMobile=!!/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent),preloader=$("#preloader");isMobile?preloader.remove():(setTimeout(function(){preloader.addClass("preloaded")},800),setTimeout(function(){preloader.remove()},2e3));
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
