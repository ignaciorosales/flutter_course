void main() async {

  print('Starting program');
  
  try{
    
  final value = await httpGet('https:apicall/json');
  print( value );
    
  }catch(err){
    print('We have an error: $err');
  }
  
  print('Ending program');
}


//Simulating get call
Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds:1));
  
  throw 'Error in get call';
  
  //return 'Value returned';
  
}























