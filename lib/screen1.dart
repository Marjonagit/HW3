import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen 1 Content'),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/screen2');
                if (result != null) {
                  context.read<DataProvider>().updateMessage(result);
                }
              },
              child: Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
