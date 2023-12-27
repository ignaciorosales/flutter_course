void main() {

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
  
  final ironman = Hero.fromJson( rawJson );
  
  //final ironman = Hero(
  //  isAlive: false,
  //  power: 'Money',
  //  name: 'Tony Stark'
  //);
  
  print( ironman );
  
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
  
  //named constructor
  Hero.fromJson( Map<String,dynamic> json)
    : name = json['name'] ?? 'no name found',
      power = json['power'] ?? 'no power found',
      isAlive = json['isAlive'] ?? 'no isAlve found';
  
  @override
  String toString(){
    return '$name, $power, ${ isAlive ? 'YES!' : 'Nope'}';
  }
}


