function addRow(){
    let table = document.getElementById("tab");
    let newrow = document.createElement('tr');
    let count = table.rows.length;
    let count2 = document.getElementsByTagName('td').length;
    count1 = count2/count;
    for(let i = 0;i<count1;i++){
        newrow.appendChild(document.createElement("td"));
    }
    table.appendChild(newrow);
}
function addColumn(){
    let table = document.getElementById("tab");
    let count = table.rows.length;
    for(let i = 0;i<count;i++){
        table.rows[i].appendChild(document.createElement("td"));
    }
}
function removeRow(){
    let table = document.getElementById("tab");
    let count = table.rows.length;
    if(count>2){
        table.deleteRow(count-1);
    }
    else{
        alert("you can not delete row.");
    }
}
function removeColumn(){
    let table = document.getElementById("tab");
    let count = table.rows;
    let c1 = document.getElementsByTagName('td').length / count.length;

    if(c1 > 2){
        for(let i = 0;i<count.length;i++){
            count[i].deleteCell(count-1);
        }
    }
    else{
        alert("you can not delete column.");
    }

}
