void main() {
  final Map<String, dynamic> rawJson = {
    
    'name': 'Spiderman',
    'power': 'trepar paredes',
    'isAlive': true
   };
  
 final iroman = Hero.fromJson( rawJson );
  
  print( iroman );
} 
class Hero{
  String name;
  String power;
  bool isAlive;
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json)
    :name = json['name'] ?? 'No name found',
     power = json['power'] ?? 'No power found',
     isAlive = json['isAlive'] ?? 'No isAlive found'; 

  @override 
  String toString(){ 
  return '$name, $power, isAlive: ${isAlive ? 'YES': 'NOPE'}';
  
  
  }
  
}