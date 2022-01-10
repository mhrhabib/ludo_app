import 'package:flutter/material.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Favorite page'),
      ),
      body: Center(
        child: Text('Favorite page'),
      ),
    );
  }
}
