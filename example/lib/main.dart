import 'package:adaptable_screen/adaptable_screen.dart';
import 'package:flutter/material.dart';

void main() {
  AdaptableScreenUtils.init(
    heightUIDisign: 1000,
    widthUIDisign: 956,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(33.r),
              ),
              height: 160.h,
              width: 200.w,
              child: Center(
                child: Text(
                  "Text Exemplo",
                  style: TextStyle(fontSize: 20.ssp),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              height: 50.h,
              width: 100.w,
              child: Center(
                child: Text(
                  "Text Exemplo",
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
