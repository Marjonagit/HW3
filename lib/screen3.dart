import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen 3 Content'),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen4');
                if (result != null) {
                  Navigator.pop(context, 'Result from Screen 3: $result');
                }
              },
              child: Text('Go to Screen 4'),
            ),
          ],
        ),
      ),
    );
  }
}
