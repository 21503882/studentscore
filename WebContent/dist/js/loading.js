  function show(){  
        $("#loading").fadeOut("normal", function(){  
            $(this).remove();  
        });  
    }      
    var delayTime;  
    $.parser.onComplete = function(){
        if(delayTime)   
            clearTimeout(delayTime);  
        delayTime = setTimeout(show,500);  
    }  