void main() async {

  print('Starting program');
  
  try{
    
    final value = await httpGet('https:apicall/json');
    print( 'Achieved: $value' );
    
  } on Exception catch(err){
    
    print('Something terrible happened: $err');
    
  } catch(err){
    
    print('We have an error: $err');
    
  } finally{
    
    print( 'Ending try catch' );
    
  }
  
  print('Ending program');
}


//Simulating get call
Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds:1));
  
  throw Exception('Exception in get call');
  
  //throw 'Error in get call';
  
  //return 'Value returned';
  
}























