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
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        helperText: "E.g. If 1000 MMK will exchange"),
                  )),
              Text("          "),
              SizedBox(
                  width: 200,
                  child: TextField(
                    // decoration: InputDecoration(label: Text("12B")),
                    decoration: InputDecoration(helperText: "to 12B"),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        helperText: "So, 0.00MMK will be exchange"),
                  )),
              Text("          "),
              Text(
                "    '0.00B'",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ]),
      ],
    );
  }
}
