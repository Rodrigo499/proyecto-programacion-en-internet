var api ='AIzaSyAmx574-fnjUHZDEyPFVk65YeBuF38fThA';
  
      function initMap() {
        var latLng={
            lat:19.642635,
            lng:-99.125449
        };
          var map = new google.maps.Map(document.getElementById('mapa'), {
          'center': latLng,
          'zoom': 14, 
              'mapTypeId': google.maps.MapTypeId.ROADMAP
        });
          var contendio = '<h2>OLA K ACE?</h2>'+
                          '<p>Del 10 al 12 de marzo</p>'+
                          '<p>Visitanos!</p>';
      
          var informacion = new google.maps.InfoWindow({
             content: contendio
          });
          
var marker = new google.maps.Marker({
   position:latLng,
    map: map,
    title: 'APOKONOKARNAL'
});
          marker.addListener('click', function(){
              informacion.open(map, marker)
          });
      }


(function(){
  "use strict";
   var regalo = document.getElementById('regalo');
   
    document.addEventListener('DOMContentLoaded',function(){
    console.log("listo");
         
        //campos datos usuarios
        var nombre = document.getElementById('nombre');
        var apellido =document.getElementById('apellido');
        var email =document.getElementById('email');
        
        //campos pases
        var pase_dia = document.getElementById('pase_dia');
        var pase_completo = document.getElementById('pase_completo');
        var pase_dosdias = document.getElementById('pase_dosdias');
        //botones y divs
        var calcular= document.getElementById('calcular');
            var errorDiv= document.getElementById('error');
        var botonRegistro= document.getElementById('btnRegistro');
                var lista_productos= document.getElementById('lista-productos');
        var suma_total =document.getElementById('suma-total');
        //extras
        var etiquetas= document.getElementById('etiquetas');
        var camisas = document.getElementById('camisa_evento');
        
        if(document.getElementById('calcular')){
        
calcular.addEventListener('click', calcularMontos);
        pase_dia.addEventListener('blur', mostrarDias);
        pase_completo.addEventListener('blur', mostrarDias);
        pase_dosdias.addEventListener('blur', mostrarDias);
       //validar campos
        nombre.addEventListener('blur',validarCampos) ;
        apellido.addEventListener('blur', validarCampos);
        email.addEventListener('blur',validarCampos);
         email.addEventListener('blur',validarMail);
        
        function validarCampos(){
            if(this.value == ''){
               errorDiv.style.display = 'block';
                errorDiv.innerHTML =" Este campo es obligatorio";
                this.style.border = '1px solid red';
                errorDiv.style.border= '1px solid red';
               }else{
                   errorDiv.style.display= 'none';
                   this.style.border= '1px solid #cccccc';
               }
        }
        function validarMail(){
            if(this.value.indexOf ("@") > -1){
                errorDiv.style.display = 'none';
                this.style.border = '1px solid #cccccc';
            }else{
                errorDiv.style.display = 'block';
                errorDiv.innerHTML = "escribe una direccion de correo valida";
            this.style.border = '1px solid red';
                errorDiv.style.border = '1px solid red';
            }
        }

        function calcularMontos(event){
    event.preventDefault();
    
   
   if(regalo.value === ''){
       alert("Debes elegir un regalo");
       regalo.focus;
   }else{
           var total = parseInt( (pase_dia.value * 30) + (pase_completo.value * 50) + (pase_dosdias.value * 45) + ((camisas.value * 10 ) * .93) + (etiquetas.value * 2)); 
    console.log(total);
    
       
       var listaProductos=[];
        if(pase_dia.value >= 1){
           listaProductos.push(pase_dia.value +" Pases por dia")
            
           }
       if(pase_completo.value >= 1){
           listaProductos.push(pase_completo.value +" Pases completos")
            
           }
          if(pase_dosdias.value >= 1){
           listaProductos.push(pase_dosdias.value +" Pases por dos dias")
            
           }
         if(camisas.value >= 1){
           listaProductos.push(camisas.value +"  Camisas")
            
           }
         if(etiquetas.value >= 1){
           listaProductos.push(etiquetas.value +" Etiquetas")
            
           }
       lista_productos.style.display= "block";
   lista_productos.innerHTML='';
       for(var i=0; i < listaProductos.length; i++){
       lista_productos.innerHTML += listaProductos[i] + '<br/>';      
       }
   suma_total.innerHTML= total +" .00 $";
  
   }
    

}
  function mostrarDias(){
     var diasElegidos=[];
      if(pase_dia.value > 0){
         diasElegidos.push('viernes');
         }
        if(pase_dosdias.value > 0){
         diasElegidos.push('viernes','sabado');
         }
        if( pase_completo.value > 0){
         diasElegidos.push('viernes', 'sabado', 'domingo');
         }
      for( var i=0; i < diasElegidos.length; i++){
          document.getElementById(diasElegidos[i]).style.display = 'block';
      }
  }
        }
}); // DOM  CONTET LOADED
})();


$(function(){
    //Lettering
    $('.nombre-sitio').lettering();
    //Menu fijo
    var windowHeight= $(window).height();
    var barraAltura=$('.barra').innerHeight();
    $(window).scroll(function(){
       var scroll= $(window).scrollTop();
        if(scroll > windowHeight){
            $('.barra').addClass('fixed');
           $('body').css({'margin-top':barraAltura+'px'});
        }else{
            $('.barra').removeClass('fixed');
            $('body').css({'margin-top':'0px'});
                console.log("Aun no");
            }
        
    });
    //Programa conferencias
    $('.info-curso').hide();
   $('.programa-evento .info-curso:first').show();
$('.menu-programa a:first').addClass('activo');
    $('.menu-programa a').on('click',function(){
    $('.menu-programa a').removeClass('activo');
        $(this).addClass('activo');
        $('.info-curso').hide();
       var enlace =$(this).attr('href');
       $(enlace).fadeIn(1000);
        return false;
        
   }) ;
    //Animacion numeros
    $('.resumen-evento li:nth-child(1) p').animateNumber({number:6},1200);
     $('.resumen-evento li:nth-child(2) p').animateNumber({number:15},1200);
     $('.resumen-evento li:nth-child(3) p').animateNumber({number:3},1200);
     $('.resumen-evento li:nth-child(4) p').animateNumber({number:9},1200);
    //Animacion de dias
    $('.cuenta-regresiva').countdown('2019/12/10 9:00:00',function(event){
        $('#dias').html(event.strftime('%D'));
        $('#horas').html(event.strftime('%H'));
        $('#minutos').html(event.strftime('%M'));
        $('#segundos').html(event.strftime('%S'));
        
    });
    //Menu-movil
    $('.menu-movil').on('click', function(){
        console.log("popo");
      $('.navegacion-principal').slideToggle();
                        }); 
    $('.hola').on('click', function(){
        console.log("hola cara de bolas");
    });
});
