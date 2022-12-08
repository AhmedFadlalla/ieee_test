import 'package:flutter/material.dart';
class ItemComponent extends StatelessWidget {

  final String text;
  final Color color;
  Color? textColor;
   ItemComponent({Key? key,
    required this.text,
    required this.color,
  this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: textColor??Colors.red
              ),),
          ),
        ),
      ),
    );
  }
}
