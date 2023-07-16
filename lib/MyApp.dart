import 'package:flutter/material.dart';

import 'Pages.dart';
import 'api.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await getOne();
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return PageOne();
                  }));
                },
                child: Text(
                  'quote of the day',
                  style: TextStyle(fontSize: 10),
                )),
            // SizedBox(
            //   width: 30,
            // ),
            ElevatedButton(
                onPressed: () async {
                  await getTwo();
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return PageTwo();
                  }));
                },
                child: Text(' 50 quotes', style: TextStyle(fontSize: 10))),
            // SizedBox(
            //   width: 30,
            // ),
            ElevatedButton(
                onPressed: () async {
                  await getThree();
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return PageThree();
                  }));
                },
                child: Text('random quotes', style: TextStyle(fontSize: 10))),
            // SizedBox(
            //   width: 30,
            // ),
            //   ElevatedButton(
            //       onPressed: () async {
            //         await getFour();
            //         Navigator.push(context, MaterialPageRoute(builder: (_) {
            //           return PageFour();
            //         }));
            //       },
            //       child: Text('image quotes', style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }
}
