import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 5'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen 5 Content'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Result from Screen 5: Hello from Screen 5');
              },
              child: Text('Go Back with Result'),
            ),
          ],
        ),
      ),
    );
  }
}
