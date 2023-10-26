import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     home: Scaffold(
  //       body: Container(
  //           width: 50,
  //           height: 50,
  //           color: Colors.red,
  //           child: const Text("Hello World")),
  //     ),
  //   ),
  // );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//         centerTitle: false,
//         title: const Text("အာညော်"),
//         leading: const Text("ဘာလာလုပ်တာလဲဟင်"),
//         actions: const [
//           Icon(Icons.arrow_back),
//           Icon(Icons.thumb_down),
//         ],
//         bottom: const PreferredSize(
//             preferredSize: (Size(double.infinity, 1)), child: Text("Hello")),
//         backgroundColor: Colors.green,
//       )),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("This is about Buttons"),
          ),
          body: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  debugPrint("Hello World");
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    foregroundColor: MaterialStatePropertyAll(Colors.blue)),
                child: const Text("Hello World"),
              )
            ],
          )),
    );
  }
}
// class MyApp extends StatelessWidget {
//   final double? size;
//   const MyApp({Key? key, required this.size}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: size,
//       width: size,
//       color: Colors.lightBlue,
//     );
//   }
// }
