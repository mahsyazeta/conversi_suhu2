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
  int _counter = 0;
  TextEditingController etInput = TextEditingController();

  void _incrementCounter(){
    setState(() {
      _counter++;
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
                controller: etInput,
                decoration: InputDecoration(
                  labelText: 'Celcius',
                  hintText: 'enter the temperature in celcius'
                ),
              ),
              SizedBox(height: 8,),
              DropdownButton(
                isExpanded: true,
                value: 'fahrenheit',
                items: [
                  DropdownMenuItem(
                    child: Text('kelvin'),
                    value: 'kelvin',
                  ),
                  DropdownMenuItem(
                    child: Text('Fahrenheit'),
                    value: 'fahrenheit',
                  ),
                  DropdownMenuItem(
                    child: Text('reamour'),
                    value: 'reamour',
                  ),
                ], 
                onChanged: (value){},
              ),
              SizedBox(height: 10,),
              Text('Hasil',style: TextStyle(fontSize: 24),),
              Text('365',style: TextStyle(fontSize: 36),),
              SizedBox(height: 8,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){}, 
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
