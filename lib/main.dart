import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _width = 200.0;
  var _height = 100.0;
  bool _toggle = true;
  Color _color = Colors.cyan;
  Decoration _myDecor =
      BoxDecoration(borderRadius: BorderRadius.circular(2), color: Colors.cyan);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.easeInOutCirc,
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              decoration: _myDecor,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_toggle) {
                      _width = 100;
                      _height = 200;
                      _myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color: Colors.red);
                      _toggle = false;
                    } else {
                      _width = 200;
                      _height = 100;
                      _myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.cyan,
                      );
                      _toggle = true;
                    }
                  });
                },
                child: Text(
                  "For Animation",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
