void main() {

  print('Starting program');
  
  httpGet('https:apicall/json')
    .then( (value){
    print( value );
  })
    .catchError( (err){
    print('Error: $err');
  });
  
  print('Ending program');
}

//Simulating get call
Future<String> httpGet( String url ){
  
  return Future.delayed( const Duration(seconds: 1), (){
    
    throw 'Error in Get response';
    
    //return 'Get response';
    
  });
  
}























