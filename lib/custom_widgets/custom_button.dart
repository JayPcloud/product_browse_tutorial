import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key, required this.icon});

  final IconData? icon;
  
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey)),
            padding: EdgeInsets.all(15),
            minWidth: 0,
            child: Icon(icon),  
          );
  }
}