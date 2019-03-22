function loadingFunction(){
            $('.Cart a').on('click',function (event) {
                    event.stopPropagation();
                   console.log(event.target.id);
                   let x= $(this).parent().siblings('h5').text();
                   let y= $(this).parent().siblings('p').text();
                   addProduct(x,y);
            })

     //returning to previous
   $('#back').click(function () {
          window.history.go(-1);
   })
   // $('tfoot tr td #checkout_a').on('click',function () {
   //     console.log("hjkh")
   //     $.get('/billing',billingform,"json")
   // })
   //  function billingform(data) {
   //      console.log(data)
   //  }
 }


function afterItem(data) {
    console.log("sucess"+data);
}

function addProduct(price,name){
    let product = {productPrice:price,productName:name};
    $.post('/AddToCart',{"product": JSON.stringify(product)},afterProduct,"json");

}
function afterProduct(data){
     $('#checkoutBtn').text(data.productnumber);
}
function getid(event) {
      let productnumber = event.currentTarget.id;
      event.stopPropagation();
      deleteProduct(productnumber);
}
function deleteProduct(productnumber) {
    $.post('/delete',{"productnumber":productnumber},afterdelete,"json")
}
function afterdelete(data) {
    var prodnum="tr"+data.productnumber;
     $('#'+prodnum).remove();

}

window.onload=loadingFunction;
