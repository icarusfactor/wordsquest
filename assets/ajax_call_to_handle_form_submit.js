jQuery( document ).ready(function() {
    // Handler for .ready() called.
    //
  jQuery(function(){
  jQuery("#form_111689").submit(function(event){
   event.preventDefault();
   event.stopPropagation();
 
            var formOk = true;
            // do js validation 
   jQuery.ajax({
    url:ajaxwq_object.ajaxwq_url,
                type:'POST',
                data: jQuery(this).serialize() + "&action=ajaxwq_do_something",
                cache: false,
    success:function(response){ 
     if(response=="true"){
                       //alert('success'); 
        jQuery("#display_rec").html("<div style='color: green;' class='success'><p>SAVED</p></div>")

                    }else if(response=="false"){

        jQuery("#display_rec").html("<div style='color: red' class='fail'>PLEASE INPUT ALL REQUIRED FILEDS.</div>")
                    }else{
        jQuery("#display_rec").html("<div style='color: blue' class='sucess'>SENT</div>")
                        //alert('Please input required fields.'); 
                    } 
                }
   });
  }); 

  });


    });


