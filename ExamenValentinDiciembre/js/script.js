     
        var thora=11;
        var tminuto=13;
        var tsegundo=50;

      

        window.onload=function(){
          
            contador() 
        }
        
        function contador(){
            if (tsegundo < 59) {
      tsegundo++;
    } else if (tsegundo == 59) {
      tsegundo = 0;
      tminuto++;
    } else if (tminuto < 59) {
      tminutos++;
    } else if (tminuto == 59) {
      tminuto = 0;
      thora++;
    }
           
          
            segundo.innerHTML=tsegundo; 
            minuto.innerHTML=tminuto;
            hora.innerHTML=thora;

           
            miIntervalo=setTimeout (contador,1000);

       
        }


      