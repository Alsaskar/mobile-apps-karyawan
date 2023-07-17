import 'package:flutter/material.dart';

class LoadingProgess extends StatelessWidget {
  String title;
  double width;
  double height;
  Color color;

  LoadingProgess({
    super.key,
    required this.title,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: CircularProgressIndicator(
            color: color,
          ),
        ),
        SizedBox(width: 10.0),
        Text(title),
      ],
    );
  }
}
