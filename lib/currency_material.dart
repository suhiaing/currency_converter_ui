import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const prefixIcons = Icon(Icons.monetization_on_outlined,
        size: 19, color: Color.fromARGB(255, 91, 91, 91));

    const colors = Color.fromARGB(255, 64, 64, 64);

    const underlineInputBorders = UnderlineInputBorder(
      borderSide: BorderSide(color: colors),
      borderRadius: BorderRadius.only(),
    );

    const double widths = 220;

    const alignment = MainAxisAlignment.spaceEvenly;

    return const Row(
      mainAxisAlignment: alignment,
      children: <Widget>[
        Column(
          mainAxisAlignment: alignment,
          children: [
            Text(
              "WELCOME!\n\nUnsure about currency rates?\n\nLet our app do the math for you.\n\nPlease enter the currency exchange rate.",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                wordSpacing: 13,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: alignment,
          children: [
            Row(
              mainAxisAlignment: alignment,
              children: [
                SizedBox(
                  width: widths,
                  child: TextField(
                    cursorColor: colors,
                    decoration: InputDecoration(
                      hintText: "E.g. 1000K exchange",
                      focusedBorder: underlineInputBorders,
                      prefixIcon: prefixIcons,
                    ),
                  ),
                ),
                Text("                     "),
                SizedBox(
                  width: widths,
                  child: TextField(
                    cursorColor: colors,
                    decoration: InputDecoration(
                      hintText: "to 12B",
                      focusedBorder: underlineInputBorders,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: alignment,
              children: [
                SizedBox(
                  width: widths,
                  child: TextField(
                    cursorColor: colors,
                    decoration: InputDecoration(
                      hintText: "Enter amount you want",
                      focusedBorder: underlineInputBorders,
                      prefixIcon: prefixIcons,
                    ),
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
