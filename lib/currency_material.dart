import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: Variables.alignment,
      children: <Widget>[
        const Text(
          "WELCOME!\n\nUnsure about currency rates?\n\nLet our app do the math for you.\n\nPlease enter the currency exchange rate.",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            wordSpacing: 13,
          ),
        ),
        Column(
          mainAxisAlignment: Variables.alignment,
          children: [
            const Row(
              mainAxisAlignment: Variables.alignment,
              children: [
                SizedBox(
                  width: Variables.widths,
                  child: TextField(
                    cursorColor: Variables.colors,
                    decoration: InputDecoration(
                      hintText: "E.g. 1000K exchange",
                      focusedBorder: Variables.underlineInputBorders,
                      prefixIcon: Variables.prefixIcons,
                    ),
                  ),
                ),
                Text("                     "),
                SizedBox(
                  width: Variables.widths,
                  child: TextField(
                    cursorColor: Variables.colors,
                    decoration: InputDecoration(
                      hintText: "to 12B",
                      focusedBorder: Variables.underlineInputBorders,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: Variables.alignment,
              children: [
                SizedBox(
                  width: Variables.widths,
                  child: TextField(
                    cursorColor: Variables.colors,
                    decoration: InputDecoration(
                      hintText: "Enter amount you want",
                      focusedBorder: Variables.underlineInputBorders,
                      prefixIcon: Variables.prefixIcons,
                    ),
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                  ),
                ),
                Text("                     "),
                Text(
                  "'00.0000000'",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                if (kDebugMode) {
                  debugPrint("Hello World");
                }
              },
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
