import 'package:flutter/material.dart';
import 'constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: Variables.alignment,
      children: <Widget>[
        Column(
          mainAxisAlignment: Variables.alignment,
          children: [
            const Text(
              "WELCOME!\n\nUnsure about currency rates?\n\nLet our app do the math for you.\n\nPlease enter the currency exchange rate.",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                wordSpacing: 13,
              ),
            ),
            Container(
              width: 300,
              height: 50,
              color: const Color.fromARGB(255, 91, 91, 91),
            )
          ],
        ),
        const Column(
          mainAxisAlignment: Variables.alignment,
          children: [
            Row(
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
            Row(
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
          ],
        ),
      ],
    );
  }
}
