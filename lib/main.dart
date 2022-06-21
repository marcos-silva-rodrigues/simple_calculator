import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String result = '';
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: Colors.deepOrange,
      ),
      decoration: InputDecoration(
        labelText: 'Número 01',
        labelStyle: TextStyle(
          color: Colors.deepOrange
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.deepOrange,
            width: 2.0
          )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.deepOrange,
                width: 2.0
            )
        ),
      ),
      onChanged: (value) {
        number1 = double.parse(value);
      },
    );

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: Colors.deepOrange,
      ),
      decoration: InputDecoration(
        labelText: 'Número 02',
        labelStyle: TextStyle(
            color: Colors.deepOrange
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.deepOrange,
                width: 2.0
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.deepOrange,
                width: 2.0
            )
        ),
      ),
      onChanged: (value) => number2 = double.parse(value),
    );

    Text result = Text(
      this.result,
      style: TextStyle(
        color: Colors.deepOrange
      ),
    );

    Padding separator = const Padding(
      padding: EdgeInsets.all(4.0),
    );

    ElevatedButton btn = ElevatedButton(
      child: const Text('Calcular'),
      style: ElevatedButton.styleFrom(
        primary: Colors.deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)
        )
      ),
      onPressed: () {
        double calc = number1 + number2;
        
        setState(() {
          this.result = 'o resultado da soma é ${calc.toStringAsFixed(0)}';
        });
      },
    );

    Column columns = Column(
      children:  [
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          width: double.infinity,
          child: btn,
        ),
        separator,
        result

      ],
    );

    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: columns
        ),
      )
    );
  }


}
