import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ColoredBox(
          color: Color.fromRGBO(48, 48, 44, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Mini!',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.monetization_on_sharp),
                    suffixIconColor: Colors.white70,
                    hintText: 'Enter Currency in USD',
                    hintStyle: TextStyle(
                      color: Colors.white60,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
