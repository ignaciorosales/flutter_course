void main() {

  final flipper = Dolphin();
  flipper.swim();
  
  final batman = Bat();
  batman.fly();
  batman.walk();
    
  final namor = Duck();
  namor.fly();
  namor.walk();
  namor.swim();
}

abstract class Animal{
  
}

abstract class Mammal extends Animal{
  
}

abstract class Bird extends Animal{
  
}

abstract class Fish extends Animal{
  
}

abstract class Flying{
  void fly() => print('Im flying');
}

abstract class Walker{
  void walk() => print('Im walking');
}

abstract class Swimmer{
  void swim() => print('Im swimming');
}


class Dolphin extends Mammal with Swimmer{
  
  
}

class Bat extends Mammal with Flying, Walker{
  
  
}

class Cat extends Mammal with Walker{
  
  
}

class Pigeon extends Bird with Flying, Walker{
  
  
}

class Duck extends Bird with Flying, Walker, Swimmer{
  
  
}

class Shark extends Mammal with Swimmer{
  
  
}

class FlyingFish extends Fish with Flying{
  
  
}




























