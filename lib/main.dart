import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final inputController = TextEditingController();
  String _newValue = 'Kelvin';
  double _result = 0;
  var listSatuanSuhu = ['Kelvin','Reamour','Fahrenheit'];

  void perhitunganSuhu(){
    setState(() {
      _inputUser = double.parse(inputController.text);

      if (_newValue == "Kelvin") {
        _result = _inputUser + 273;
      } else {
        _result = (4/5) * _inputUser;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas 1 Jobsheet 4'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children:[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Celcius',
                  hintText: 'enter the temperature in celcius'
                ),
              ),
              SizedBox(height: 8,),
              DropdownButton<String>(
                onTap: perhitunganSuhu,
                items: 
                listSatuanSuhu.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),);
                }).toList(), 
                value: _newValue,
                onChanged: (value) {
                  setState(() {
                    _newValue = value.toString();
                  });
                },
              ),
              SizedBox(height: 10,),
              Result(result: _result),
              SizedBox(height: 8,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: perhitunganSuhu, 
                      child: Text('conversi suhu')
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text('Riwayat konversi',style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}

class Result extends StatelessWidget{

  const Result({
    Key? key,
    required this.result,
  }) : super(key: key);

  final double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hasil",style: TextStyle(fontSize: 20),),
          Text(
            result.toStringAsFixed(1),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
 
