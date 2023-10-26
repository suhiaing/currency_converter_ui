import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 220,
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 91, 91, 91),
                    decoration: InputDecoration(
                      hintText: "E.g. 1000K exchange",
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 64, 64, 64)),
                        borderRadius: BorderRadius.only(),
                      ),
                      prefixIcon: Icon(Icons.monetization_on_outlined,
                          size: 19, color: Color.fromARGB(255, 91, 91, 91)),
                    ),
                  ),
                ),
                Text("                     "),
                SizedBox(
                  width: 220,
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 91, 91, 91),
                    decoration: InputDecoration(
                      hintText: "to 12B",
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 64, 64, 64)),
                        borderRadius: BorderRadius.only(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 220,
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 91, 91, 91),
                    decoration: InputDecoration(
                      hintText: "Enter amount you want",
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 64, 64, 64)),
                        borderRadius: BorderRadius.only(),
                      ),
                      prefixIcon: Icon(Icons.monetization_on_outlined,
                          size: 19, color: Color.fromARGB(255, 91, 91, 91)),
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
