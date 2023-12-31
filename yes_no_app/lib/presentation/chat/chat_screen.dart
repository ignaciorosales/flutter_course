import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.gyazo.com/f67e60956a1f24f1352fd12196105f8f.png'),
          ),
        ),
        title: const Text('Vito'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}


class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Text('Indice: $index');
                }
              ),
            ),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}