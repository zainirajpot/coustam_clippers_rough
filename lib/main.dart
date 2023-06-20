import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.44;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1683333, size.height * 0.2450000);
    path0.lineTo(size.width * 0.8300000, size.height * 0.2500000);
    path0.lineTo(size.width * 0.8283333, size.height * 0.6250000);
    path0.lineTo(size.width * 0.4950000, size.height * 0.3825000);
    path0.lineTo(size.width * 0.1716667, size.height * 0.6150000);
    path0.lineTo(size.width * 0.1683333, size.height * 0.2450000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
