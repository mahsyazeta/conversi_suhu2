import 'package:flutter/material.dart';

class input extends StatelessWidget {
  const input({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Celcius',
        hintText: 'enter the temperature in celcius'
      ),
    );
  }
}