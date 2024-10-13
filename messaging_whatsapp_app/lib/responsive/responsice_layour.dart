import 'package:flutter/material.dart';

class Responsive_layout extends StatelessWidget {
  const Responsive_layout({required this.mobileScreen_layout, required this.webScreen_layout});
  final Widget mobileScreen_layout;
  final Widget webScreen_layout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
    context,constraints
    ){
      if(constraints.maxWidth >900){
        return webScreen_layout;
      }else{
        return mobileScreen_layout;
      }
    });
  }
}
