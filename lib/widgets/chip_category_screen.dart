import 'package:flutter/material.dart';

class ChipCategory extends StatelessWidget {
  final String title;
  const ChipCategory({super.key, required this.title});
  

  @override
  Widget build(BuildContext context) {
    return  
      Chip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150)),
        label: Text(title),
    );
  }
}