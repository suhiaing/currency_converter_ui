import 'package:flutter/material.dart';
import 'constants.dart';
import 'text.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = '0.000000';
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();

  void calculate() {
    setState(() {
      double? rate1;
      double? rate2;
      double? amount;
      try {
        rate1 = double.parse(textEditingController1.text);
        rate2 = double.parse(textEditingController2.text);
        amount = double.parse(textEditingController3.text);
      } catch (e) {
        debugPrint("$e");
      }
      if (rate1 != null && rate2 != null && amount != null) {
        result = ((amount * (rate2 / rate1))).toStringAsFixed(2);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: Variables.alignment,
      children: <Widget>[
        const MyText(),
        Column(
          mainAxisAlignment: Variables.alignment,
          children: [
            Row(
              mainAxisAlignment: Variables.alignment,
              children: [
                SizedBox(
                  width: Variables.widths,
                  child: TextField(
                    controller: textEditingController1, //Here is controller
                    cursorColor: Variables.colors,
                    decoration: const InputDecoration(
                      hintText: "E.g. 1000K exchange",
                      focusedBorder: Variables.underlineInputBorders,
                      prefixIcon: Variables.prefixIcons,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                SizedBox(
                  width: Variables.widths,
                  child: TextField(
                    controller: textEditingController2, //Here is controller
                    cursorColor: Variables.colors,
                    decoration: const InputDecoration(
                      hintText: "to 12B",
                      focusedBorder: Variables.underlineInputBorders,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: Variables.alignment,
              children: [
                SizedBox(
                  width: Variables.widths,
                  child: TextField(
                    controller: textEditingController3, //Here is controller
                    cursorColor: Variables.colors,
                    decoration: const InputDecoration(
                      hintText: "Enter amount you want",
                      focusedBorder: Variables.underlineInputBorders,
                      prefixIcon: Variables.prefixIcons,
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                SizedBox(
                  width: Variables.widths,
                  child: Text(
                    result,
                    style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: calculate,
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: const Size(480, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ), //style form
              child: const Text("Convert"),
            ),
          ],
        ),
      ],
    );
  }
}
