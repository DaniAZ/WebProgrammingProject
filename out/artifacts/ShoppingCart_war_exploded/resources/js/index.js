var count=1;

function loadingFunction(){
     $('.Product0 a').on('click',function () {
        let we= $('.Product0 h5').text();
        let po=$('.Product0 p').text();
        addProduct(we,po);
    })
    $('.Product1 a').on('click',function () {
         let we= $('.Product1 h5').text();
         let po=$('.Product1 p').text();
        addProduct(we,po);
    })
    $('.Product2 a').on('click',function () {
        let we= $('.Product2 h5').text();
        let po=$('.Product2 p').text();
        addProduct(we,po);
    })
    $('.Product3 a').on('click',function () {
        let we= $('.Product3 h5').text();
        let po=$('.Product3 p').text();
        addProduct(we,po);
    })
    $('.Product4 a').on('click',function () {
        let we= $('.Product4 h5').text();
        let po=$('.Product4 p').text();
        addProduct(we,po);
    })
    $('.Product5 a').on('click',function () {
        let we= $('.Product5 h5').text();
        let po=$('.Product5 p').text();
        addProduct(we,po);
    })
    //event when user insert username
    $('#userNameSignUp').on('blur',onBlurUsername);

   $('#back').click(function () {
          window.history.go(-1);
   })
    $('#checkboxID').change(function () {
        $('#shipping input').prop('disabled',true);
    })

}
function onBlurUsername() {
    console.log("blur")
   var username=$('#userNameSignUp').val();
   $.get('/signup',{"username":username},afterBlur,"json");
}
function afterBlur(data) {
    if(data===true) {
        var warning = $('<p>', {
            style: "color:red",
            "id": "warning",
            text: "User name already exists"
        });
        $('#userNameSignUp').after(warning);
    }
    else{
        $('#warning').remove();
    }
}
function addProduct(price,name){
    var product = {productPrice:price,productName:name};
      $.post('/AddToCart', { "product": JSON.stringify(product)},afterProduct,"json");

}
function getid(event) {
      var productnumber = event.currentTarget.id;
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
function afterProduct(data){
     $('#checkoutBtn').html(data.productnumber);
    }
window.onload=loadingFunction;
