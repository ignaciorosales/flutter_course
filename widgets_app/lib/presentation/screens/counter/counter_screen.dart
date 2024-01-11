import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static const String name = 'counter_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one_outlined),
        onPressed:() {
        },
      ),
      appBar: AppBar(
        title: const Text('Counter Riverpod'),
      ),
      body: Center(
        child: Text('Value: $clickCounter', style: Theme.of(context).textTheme.titleLarge,),)
    );
  }
}