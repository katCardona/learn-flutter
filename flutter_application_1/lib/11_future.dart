void main(){
  
  print('inicio de programa');
  
  httpGet('https://Kat-Cardona.com/cursos').then( 
    (value){
    print( value );
  })
    .catchError( (err){ 
    print('Error: $err');
  
  
   });
  
  print('fin de programa');
  
}

Future<String> httpGet ( String url ){
  
  return Future.delayed( const Duration(seconds: 1), (){
    
    throw 'Error en la peticion http';
    
//    return 'Respuesta de la pertición http';
    
  }); 
  
}