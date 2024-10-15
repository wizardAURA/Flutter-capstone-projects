import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
final String text;
final Color colour;
final Color bcolour;
final VoidCallback onPressed;

  const CustomButton({required this.text,required this.colour, required this.onPressed, required this.bcolour,});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text,
    style: TextStyle(
      color: colour
    ),),
    style: ElevatedButton.styleFrom(
      backgroundColor: bcolour,
      minimumSize: const Size(double.infinity, 50)
    ),);
  }
}
