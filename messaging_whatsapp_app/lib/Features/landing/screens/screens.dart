import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';
import 'package:messaging_whatsapp_app/common/widgets/custom_button.dart';

class landing extends StatelessWidget {
  const landing({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height / 20,),
          const Text('Welcome to Whatsapp',
          style: TextStyle(fontSize: 33,
          fontWeight: FontWeight.w600),),
          SizedBox(height: size.height/9,),
          Image.asset('images/bg.png',color: tabColor,height: size.height * 0.4,),
          SizedBox(height: size.height/12),
           const Padding(
             padding: EdgeInsets.all(15.0),
             child: Text('Read our Privacy Policy.Tap "Agree and continue" to accept the Terms of Service',
                       style: TextStyle(
              color: greyColour),
             textAlign: TextAlign.center,),
           ),
          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(width: size.width*0.75,child: CustomButton(text: 'AGREE AND CONTINUE', colour:blackColour, onPressed: (){},bcolour: tabColor,)),
          ),
          const SizedBox(height: 20),
        ],
      ),
      ),
    );
  }
}
