void main() async{
  
  print('inicio de programa');
 
  try {
     final value = await httpGet('https://Kat-Cardona.com/cursos');
   print( value);
   
  } catch (err) {
    print('tenemos un error: $err');
    
  }
  
  print('fin de programa');
  
}

Future<String> httpGet ( String url ) async {
  
  await Future.delayed( const Duration(seconds: 1));
  
  return 'Tenemos un valor de la petición';
  
}