import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    
    final messages = <String>[
      'Loading movies',
      'Buying popcorn!',
      'Loading popular movies'
    ];

    Stream<String> getLoadingMessages(){
      return Stream.periodic(const Duration(milliseconds: 1200), (step){
        return messages[step];
      }).take(messages.length);
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: getLoadingMessages(),
            builder: (context,snapshot){
              if(!snapshot.hasData) return const Text('Loading');

              return Text(snapshot.data!);
            }
          )
        ]
      )
    );
  }
}