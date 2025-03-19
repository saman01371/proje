document.addEventListener("DOMContentLoaded",function () {
    const getProducts=async ()=>{
        try {

            const res=await fetch('http://127.0.0.1:8000/api/products',{
                method:"GET",
                headers:{
                    "Content-type":"application/json",

                },
            });
            const result=await res.json();
            result.data.map(product)
        }catch (error){
            console.log(error)
        }
    };
    getProducts()
})
