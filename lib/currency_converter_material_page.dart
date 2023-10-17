import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const myBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
        width: 3.3,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ColoredBox(
          color: const Color.fromRGBO(48, 48, 44, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // color: Colors.yellowAccent,
              // height: 200,
              // width: 300,
              const Text(
                'Convert Currency!',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(6),
                // color: Colors.yellowAccent,
                child: const TextField(
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    focusedBorder: myBorder,
                    enabledBorder: myBorder,
                    prefixIcon: Icon(Icons.monetization_on_sharp),
                    prefixIconColor: Colors.black,
                    hintText: 'Enter Currency in USD',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      debugPrint('Convert button pressed!');
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 50))),
                  child: const Text(
                    'Convert',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
