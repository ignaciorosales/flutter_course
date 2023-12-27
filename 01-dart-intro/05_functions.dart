void main() {

  print( greetEveryone() );
  
  print( 'Suma: ${ addTwoNumbers( 10, 20 ) }');
  
  print( greetPerson(name: 'Nacho', message: 'Hi,') );
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers( int a, int b )  => a + b;

int addTwoNumbersOptional( int a, [ int b = 0] ){
  
  return a + b;
}

// ({ This makes parameters optional and by name })
// required means that name is not an optional parameter
String greetPerson({ required String name, String message = 'Hola,'}){
  return '$message $name';
}