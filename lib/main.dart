import 'package:flutter/material.dart';
import 'package:widget_navigation/page_dua.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSatu(),
    );
  }
}

class PageSatu extends StatelessWidget {
  const PageSatu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageDua()),
              );
            },
            child: Text("Pindah Ke Halaman 2"),
          ),
        ));
  }
}
