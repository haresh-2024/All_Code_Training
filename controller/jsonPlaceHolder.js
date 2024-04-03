
const index = async(req,res)=>{
    try{
        res.render('jsonPlaceholder/json');
    }
    catch(e){
        console.log(e);
    }
}
const view = async (req,res)=>{
    try{
        res.render('jsonPlaceholder/jsonview');
    }
    catch(e){
        console.log(e);
    }
}

module.exports = {index,view}; 
