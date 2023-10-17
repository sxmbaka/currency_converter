import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialApp();
  }
}

class _CurrencyConverterMaterialApp
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditingController = TextEditingController();
  double resultValue = 0, inputValue = 0;

  final double dollarToRupee = 81;

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

    void convert() {
      setState(() {
        inputValue = double.parse(textEditingController.text);
        resultValue = dollarToRupee * inputValue;
      });
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 67, 64),
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
              Text(
                resultValue != 0 ? 'INR ${resultValue.toStringAsFixed(2)}' : '',
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(6),
                // color: Colors.yellowAccent,
                child: TextField(
                  onSubmitted: (value) => convert(),
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: const InputDecoration(
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
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextButton(
                  onPressed: convert,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      resultValue = 0;
                    });
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
                      Icon(Icons.restart_alt),
                      SizedBox(width: 10),
                      Text(
                        'Reset',
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
