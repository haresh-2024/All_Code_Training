
document.getElementById('click').addEventListener("click", myFunction,{once:true});

let score = 0;
let time = 15;

// for starting timer
function start(){
const timer = setInterval(()=>{
      if(time > 0){
        document.getElementById('time').innerHTML = time;
        time--;
      }
      else{
             alert("Time is over and you score is "+score);
             clearInterval(timer);
             location.reload();
      }
}, 1000);
}
// main function 


function myFunction(e){

        let table = document.getElementById("table");
        let newrow = document.createElement('tr');
        let count = table.rows.length;
        let count2 = document.getElementsByTagName('td').length;
        count1 = count2/count;
        
        if(table.rows.length < 10){

            for(let i = 0;i<count1;i++){
                newrow.appendChild(document.createElement("td"));
            }
            table.appendChild(newrow);
            let count3 = table.rows.length;
            for(let i = 0;i<count3;i++){
                table.rows[i].appendChild(document.createElement("td"));
            }

        }
        var x = Math.floor(Math.random() * 256);
        var y = Math.floor(Math.random() * 256);
        var z = Math.floor(Math.random() * 256);
        let box = document.querySelectorAll("td");
        var RGBColor = "rgba(" + x + "," + y + "," + z + ","+1.0+")"; 
        for(let i=0;i<box.length;i++){
            box[i].style.background = RGBColor;
            box[i].style.opacity = 1.0;
        }
        let bn =  parseInt(Math.random() * (count2)) + 1;
        box[bn].style.opacity = 0.8;
        score++;
        document.getElementById("score").innerHTML = `Score is : ${score}`;
        
        box[bn].addEventListener("click", myFunction,{once:true});      

}

