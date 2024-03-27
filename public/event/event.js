function function1(){
    alert("onclick trigged");
}
function function2(){
     var a = document.getElementById("over").style.background = 'red';
}
function function3(){
    var a = document.getElementById("over").style.background = 'white';
}
function function4(){
    var a = document.getElementById("up").style.background = 'red'; color = 'green';
}
function function5(){
   var a = document.getElementById("up").style.background = 'blue';
}
function function6(){
    var a = document.getElementById("move").style.background = 'red';
 }
function function7(){
    alert("you right click on this");
}
function function8(){
    alert("you double click on this");
}
function function9(){
    alert("key down.");
}
function function10(){
    alert("key Up.");
    var a = document.getElementById("keyup")
    a.value = a.value.toUpperCase();
}
function function11(){
    alert("key press."+event.key);
}
function function12(){
    var a = document.getElementById("fucus").style.background = 'blue';
}
function function13(){
    var a = document.getElementById("blur");
    a.value = a.value.toUpperCase();
}
function function14(){
    var a = document.getElementById("change"); 
    alert("you selected: "+a.value);
}
function function15(){
    alert("page is loading...");
    document.getElementById("load").innerHTML = 'Page loaded successfully';
}
function function16(){
    alert("page is unloading...");
    document.getElementById("unload").innerHTML = 'Page closed successfully';
}
function function17(){
    alert("you are resize the tab...");
    document.getElementById("size").innerHTML = 'page is resize.';
}
function function18(){
    alert("you copy something.");
    document.getElementById("copy").innerHTML = 'copy successfully.';
}
function function19(){
    alert("you drag something.");
    document.getElementById("drag").innerHTML = 'drag successfully.';
}
function function20(){
    alert("you drop something.");
    document.getElementById("drop").innerHTML = 'drop successfully.';
}
function function21(){
    alert("input is change.");
    document.getElementById("input").innerHTML = 'data insert successfully.';
}
function function22(){
    alert("paste successfully.");
    document.getElementById("paste").innerHTML = 'data paste successfully.';
}
function function23(){
    alert("your are scrolling...");
}
function function24(){
    alert("you select the text");
}
function function25(){
    alert("you toggle this");
}
function function26(){
    alert("you roll the mouse...");
}