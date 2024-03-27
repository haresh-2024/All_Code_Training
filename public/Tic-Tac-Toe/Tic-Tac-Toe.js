var  turn=0;
 
 document.getElementById('click').addEventListener('click',function(e){
    
    if(turn == 0){
        let id = e.target.getAttribute('id');
        document.getElementById(id).innerText = '0';
        turn++;
    }
    else if(turn == 1){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = 'X';
            turn++;
        }
        else
        {
            alert("entry is not possible");
        }
    }
    else if(turn == 2){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = '0';
            turn++;
        }
        else
        {
            alert("entry is not possible");
        }
    }
    else if(turn == 3){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = 'X';
            turn++;
        }
        else
        {
            alert("entry is not possible");
        }
    }
    else if(turn == 4){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = '0';
            turn++;
            winner();
        }
        else
        {
            alert("entry is not possible");
        }
    }
    else if(turn == 5){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = 'X';
            turn++;
            winner();
        }
        else
        {
            alert("entry is not possible");
        }
    }
    else if(turn == 6){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = '0';
            winner();
            turn++;
        }
        else
        {
            alert("entry is not possible");
        }
    }
    else if(turn == 7){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = 'X';
            winner();
            turn++;
        }
        else
        {
            alert("entry is not possible");
        }
    }
    else if(turn == 8){
        let id = e.target.innerText;
        if(id != '0' && id != 'X' ){
            let val = e.target.getAttribute('id');
            document.getElementById(val).innerText = '0';
            if(winner()){

            }
            else{
                draw();
            }
            
            turn++;
        }
        else
        {
            alert("entry is not possible");
        }
    }
 });
 function winner(){
    const row11 =  document.getElementById('row11').innerText;
    const row12 =  document.getElementById('row12').innerText;
    const row13 =  document.getElementById('row13').innerText;
    const row21 =  document.getElementById('row21').innerText;
    const row22 =  document.getElementById('row22').innerText;
    const row23 =  document.getElementById('row23').innerText;
    const row31 =  document.getElementById('row31').innerText;
    const row32 =  document.getElementById('row32').innerText;
    const row33 =  document.getElementById('row33').innerText;

    const result1 = [row11, row12, row13].every(value => {
        return value === '0';
      });
      const result2 = [row21, row22, row23].every(value => {
        return value === '0';
      });
      const result3 = [row31, row32, row33].every(value => {
        return value === '0';
      });
      const result4 = [row11, row21, row31].every(value => {
        return value === '0';
      });
      const result5 = [row12, row22, row32].every(value => {
        return value === '0';
      });
      const result6 = [row13, row23, row33].every(value => {
        return value === '0';
      });
      const result7 = [row11, row22, row33].every(value => {
        return value === '0';
      });
      const result8 = [row13, row22, row31].every(value => {
        return value === '0';
      });

      const result9 = [row11, row12, row13].every(value => {
        return value === 'X';
      });
      const result10 = [row21, row22, row23].every(value => {
        return value === 'X';
      });
      const result11 = [row31, row32, row33].every(value => {
        return value === 'X';
      });
      const result12 = [row11, row21, row31].every(value => {
        return value === 'X';
      });
      const result13 = [row12, row22, row32].every(value => {
        return value === 'X';
      });
      const result14 = [row13, row23, row33].every(value => {
        return value === 'X';
      });
      const result15 = [row11, row22, row33].every(value => {
        return value === 'X';
      });
      const result16 = [row13, row22, row31].every(value => {
        return value === 'X';
      });
  
      const result17 = [row11,row12,row13,row21,row22,row23,row31,row32,row33].every(value => {
        return value === '0','1';
      });

    if(result1 || result2|| result3|| result4|| result5|| result6|| result7|| result8){
            alert('O win...');
            location.reload();
        }
    else if(result9 || result10 || result11 || result12 || result13|| result14 || result15|| result16){
           alert('X win...');
           location.reload();
       }
}
function draw(){
    alert("Game is Draw...");
    location.reload();
}