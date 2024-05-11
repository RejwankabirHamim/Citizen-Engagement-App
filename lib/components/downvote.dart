import 'package:flutter/material.dart';

class TriangleDownvoteIcon extends StatelessWidget {
  final double size;
  final Color color;

  TriangleDownvoteIcon({this.size = 24.0, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _TrianglePainter(color, down: true),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  final Color color;
  final bool down;

  _TrianglePainter(this.color, {this.down = false});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;

    Path path = Path();
    if (down) {
      path.moveTo(0, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width / 2, size.height);
      path.close();
    } else {
      path.moveTo(size.width / 2, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.close();
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Triangle Downvote Icon Example')),
      body: Center(child: TriangleDownvoteIcon()),
    ),
  ));
}
