import 'package:flutter/material.dart';
import 'package:messaging_whatsapp_app/colors.dart';
import 'package:messaging_whatsapp_app/common/widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';
class loginScreen extends StatefulWidget {

  static const String id = 'mobileNumber_screen';
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final phonecontroller = TextEditingController();
  Country? country;
  @override
  void dispose() {
    super.dispose();
    phonecontroller.dispose();
  }
  void pickCountry(){
    showCountryPicker(context: context, onSelect: (Country _country){
      setState(() {
        country = _country;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('WhatsApp will need to verify your phone number'),
            const SizedBox(height: 10,),
            TextButton(onPressed: pickCountry, child: Text('Pick country',style: TextStyle(
              color: Colors.blue
            ),),),
            const SizedBox(height: 5),
            Row(children: [
              if(country!= null)
              Text('+${country!.phoneCode}'),
              const   SizedBox(width: 10),
              SizedBox(
                width: size.width*0.7,
                child: TextField(
                  controller:phonecontroller,
                  decoration: const InputDecoration(
                    hintText: 'phone number'
                  ),
                ),
              )
            ],),
            SizedBox(height: size.height*0.54,),

            SizedBox(width: 90, child: CustomButton(text: 'NEXT', colour: Colors.black, onPressed:(){}, bcolour: tabColor))
          ],
        ),
      ),
    );
  }
}
