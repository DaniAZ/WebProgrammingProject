
$(document).ready(function(){
    $('#billingForm').on('submit',onsubmitItems)

    //confirmation form disable if same billing and address
    $('#checkboxID').change(function () {
         $('#shipping input').attr('disabled',this.checked)
    })
});

function onsubmitItems(event) {
    var that=$(this),
        url=that.attr('action'),
        method=that.attr('method'),
        data={};
    that.find('[name]').each(function (index,value) {
        var that=$(this),
            name=that.attr('name'),
            value=that.val();
        data[name]=value;
        //JSON.stringify(data);
    });
    console.log(data);
    $.ajax({
        url:url,
        type:method,
        data:data,
        success:function(response) {
            //console.log("sucess"+response)
              document.location.href='/confirmation.jsp';
                    }
          })
    return false;
}


