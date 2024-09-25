import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(10),
        padding: EdgeInsets.all(6),
        color: Colors.grey,
        strokeWidth: 1,
        dashPattern: [6, 3],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image, size: 50),
              Text("Choose Image Or Video"),
            ],
          ),
        ),
      ),
    );
  }
}