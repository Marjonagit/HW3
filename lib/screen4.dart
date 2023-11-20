import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen 4 Content'),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen5');
                if (result != null) {
                  Navigator.pop(context, 'Result from Screen 4: $result');
                }
              },
              child: Text('Go to Screen 5'),
            ),
          ],
        ),
      ),
    );
  }
}
