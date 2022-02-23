var i = 0;
var images = [];
var t = 5000; //millisecs

images[0] = './assets/images/10.jpg';
images[1] = './assets/images/hero_home_bg7.jpg';
images[2] = './assets/images/9.jpg';
images[3] = './assets/images/7.jpg';
images[4] = './assets/images/6.jpg';
images[5] = './assets/images/4.jpg';
images[6] = './assets/images/hero_home_bg9.jpg';

function changeImg() 
{
    document.getElementById("centertext").style.backgroundImage = "url("+images[i]+")";
    i = (i+1) % images.length; 
}

window.onload = function()
{ 
    setInterval(changeImg, t); 
} 