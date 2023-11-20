import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen 2 Content'),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen3');
                if (result != null) {
                  Navigator.pop(context, 'Result from Screen 2: $result');
                }
              },
              child: Text('Go to Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
