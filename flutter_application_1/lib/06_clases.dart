void main() { 
final wolverine = Hero(name: 'Logan', power: 'Regereración');
  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );

  
 }

class Hero { 
  String name;
  String power;
  
  Hero({
    required this.name, 
    this.power = 'sin poder'
      
      
    
   });
  
  //Hero(String pName, String pPower )
  //    : name = pName,
  //      power = pPower;
  
  String toString() { 
    return '$name - $power';
  }
  }