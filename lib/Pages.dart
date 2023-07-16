import 'dart:math';

import 'package:api/api.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(dataOne[0]['q']), Text(dataOne[0]['a'])],
        ),
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  @override
  State<PageTwo> createState() => _PageTwoState();
}

int i = 0;

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dataTwo[i]['q']),
            Text(dataTwo[i]['a']),
            ElevatedButton(
                onPressed: () async {
                  i = i + 1;
                  print('value : $i');

                  await getTwo();
                  print(dataTwo[1]['q']);
                  setState() {}

                  ;
                },
                child: Text(
                  'Generate quote',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(dataThree[0]['q']), Text(dataThree[0]['a'])],
        ),
      ),
    );
  }
}

// class PageFour extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [],
//         ),
//       ),
//     );
//   }
// }
