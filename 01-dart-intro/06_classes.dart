void main() {

  final Hero wolverine = Hero(name: 'Logan', power: 'Recovery');
  //final Hero wolverine = Hero('Logan','Recovery');

  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );
}

class Hero{
  
  String name;
  String power;
  
  Hero({
    required this.name, 
    this.power = 'No power'
  });
  
  //Hero( this.name, this.power );
  
  //Hero( String name, String power )
  //  : name = name,
  //    power = power;
  
  @override
  String toString(){
    return '$name - $power';
  }
  
  //overriding the toString method to customize as we want
  
}




