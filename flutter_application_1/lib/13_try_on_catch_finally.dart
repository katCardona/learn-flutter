void main() async{
  
  print('Inicio de programa');
 
  try {
     final value = await httpGet('https://Kat-Cardona.com/cursos');
   print( value);
  } on Exception catch(err) { 
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OPS!! Algo terrible pasó: $err');
   } finally{
    print('Fin del try y catch');
    
  }
  
  print('Fin de programa');
  
}

Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parametros en el URL');
  
//   throw 'Error en la petición';
  
//   return 'Tenemos un valor de la petición';
  
}