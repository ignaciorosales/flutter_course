void main() {

  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  print( windPlant );
  print( 'wind: ${ chargePhone( windPlant )}');
  print( 'nuclear: ${ chargePhone( nuclearPlant )}');
}

double chargePhone( EnergyPlant plant){
  if ( plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}

abstract class EnergyPlant{
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });
  
  void consumeEnergy( double amount );
}

enum PlantType{
  
  nuclear, 
  wind,
  water
  
}

// extends and implements differences


class WindPlant extends EnergyPlant{
  
  WindPlant({ required double initialEnergy })
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy( double amount ){
    energyLeft -= amount;
  }
}

// so you might want to user implements, when you dont need to inherit everything, but just specific stuff from an abstract class
class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy( double amount ){
    energyLeft -= (amount * 0.5);
  }
}