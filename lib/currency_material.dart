import 'package:flutter/material.dart';
import 'constants.dart';
// import 'text.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    double? result = 0;
    TextEditingController textEditingController1 = TextEditingController();
    TextEditingController textEditingController2 = TextEditingController();
    TextEditingController textEditingController3 = TextEditingController();
    return Row(
      mainAxisAlignment: Variables.alignment,
      children: <Widget>[
        // const MyText(),
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
                const Text("                     "),
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
                const Text("                     "),
                const Text(
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
                  result = (amount * (rate2 / rate1));
                  debugPrint(result.toString());
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
