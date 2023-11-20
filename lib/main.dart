import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'screen5.dart';

void main() {
  runApp(MyApp());
}

class DataProvider extends ChangeNotifier {
  String message = '';

  void updateMessage(String newMessage) {
    message = newMessage;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        title: 'HW3',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/screen1': (context) => Screen1(),
          '/screen2': (context) => Screen2(),
          '/screen3': (context) => Screen3(),
          '/screen4': (context) => Screen4(),
          '/screen5': (context) => Screen5(),
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/screen1');
          },
          child: Text('Go to Screen 1'),
        ),
      ),
    );
  }
}
