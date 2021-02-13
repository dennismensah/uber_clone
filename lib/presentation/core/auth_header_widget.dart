import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;
    final path = Path();
    path.lineTo(0, size.height * 0.82);
    path.quadraticBezierTo(
        size.width * 0.02, size.height * 0.97, size.width * 0.1, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(ShapePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ShapePainter oldDelegate) => false;
}

class AuthHeader extends StatelessWidget {
  final String title;
  const AuthHeader({
    Key key,this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0.w,
      height: 25.0.h,
      child: CustomPaint(
        painter: ShapePainter(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(),
            const Center(
              child: FaIcon(
                FontAwesomeIcons.locationArrow,
                color: Colors.white,
                size: 90.0,
              ),
            ),
             Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(title,style:TextStyle(fontSize: 9.0.sp,color:Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
