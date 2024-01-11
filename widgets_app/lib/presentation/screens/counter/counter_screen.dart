import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static const String name = 'counter_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one_outlined),
        onPressed:() {
          ref.read(counterProvider.notifier).state++;
        },
      ),
      appBar: AppBar(
        title: const Text('Counter Riverpod'),
        actions:[
          IconButton(
            onPressed: (){
              ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
            }, 
            icon: Icon(isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined))
        ]
      ),
      body: Center(
        child: Text('Value: $clickCounter', style: Theme.of(context).textTheme.titleLarge,),)
    );
  }
}