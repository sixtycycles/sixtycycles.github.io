/**
 * Created by rod on 3/31/17.
 */

function setup(){
document.getElementById('about').style.visibility="hidden";
    document.getElementById('projects').style.visibility="hidden";
    document.getElementById('fun').style.visibility="hidden";
}

function about(){

    document.getElementById('about').style.visibility = "visible";
    document.getElementById('projects').style.visibility = "hidden";
    document.getElementById('fun').style.visibility = "hidden";
}
function projects(){
    document.getElementById('about').style.visibility = "hidden";
    document.getElementById('projects').style.visibility = "visible";
    document.getElementById('fun').style.visibility = "hidden";
}
function fun(){
    document.getElementById('about').style.visibility = "hidden";
    document.getElementById('projects').style.visibility = "hidden";
    document.getElementById('fun').style.visibility = "visible";
}