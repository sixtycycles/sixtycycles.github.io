

function about(){
    document.getElementById('targetArea').innerHTML = document.getElementById('about').innerHTML;
    document.getElementById('aboutBtn').className='active';
    document.getElementById('projectBtn').className='';
    document.getElementById('funBtn').className='';
}
function projects(){
    document.getElementById('targetArea').innerHTML= document.getElementById('projects').innerHTML;
    document.getElementById('aboutBtn').className='';
    document.getElementById('projectBtn').className='active';
    document.getElementById('funBtn').className='';
}
function fun(){
    document.getElementById('targetArea').innerHTML= document.getElementById('fun').innerHTML;
    document.getElementById('aboutBtn').className='';
    document.getElementById('projectBtn').className='';
    document.getElementById('funBtn').className='active';
}

function setup(){
    document.getElementById('about').style.visibility = "hidden";
    document.getElementById('projects').style.visibility = "hidden";
    document.getElementById('fun').style.visibility = "hidden";

    about();
}
