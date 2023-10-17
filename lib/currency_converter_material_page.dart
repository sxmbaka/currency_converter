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
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.align_horizontal_left_outlined),
            ),
            Text(
              'Currency Converter',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ColoredBox(
          color: const Color.fromRGBO(48, 48, 44, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '0',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 50,
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
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    elevation: 15,
                    shadowColor: Colors.black,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.money_sharp),
                      SizedBox(width: 10),
                      Text(
                        'Convert',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
