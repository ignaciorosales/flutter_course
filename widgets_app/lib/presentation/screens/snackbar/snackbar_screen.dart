import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static const name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar =  SnackBar(
      content: const Text('Hi world'),
      action: SnackBarAction(label: 'OK', onPressed: (){},),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Minim pariatur laborum do dolor excepteur excepteur duis minim proident id incididunt ad adipisicing. Reprehenderit occaecat in id adipisicing laboris nisi dolor eiusmod. Voluptate aliquip nulla eu laboris ullamco do adipisicing. Officia nostrud incididunt id non magna est. Ex enim cillum consequat aute irure ullamco aute pariatur quis eu irure aute proident. Excepteur quis ipsum qui dolore velit enim non ad cillum consequat. Quis irure laborum sunt tempor velit eu culpa ex.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancel')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Accept'))
        ]
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar & dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [ 
                    const Text('Proident anim ea minim officia laboris. Incididunt id incididunt consectetur officia cillum anim amet. Ut reprehenderit laboris ex excepteur cupidatat commodo. Ex labore cillum amet pariatur non eu.') 
                  ]
                );
              },
              child: const Text('Used licenses')
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show dialogs'),
            ),
          ]
        )
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Show snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined)
      ), 
    );
  }
}