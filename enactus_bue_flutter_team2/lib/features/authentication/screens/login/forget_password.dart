import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Padding(padding:
       EdgeInsets.all(24),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          ///  Heading
          
           Text("Forget Password", style: Theme.of(context).textTheme.headlineMedium),
           const SizedBox(height: 16),

           Text("Don't worry sometimes people can forget too, enter your email and we will send you a password reset link", style: Theme.of(context).textTheme.labelMedium),
           const SizedBox(height: 16 ),

           



          
          ///  Text Field
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              labelText: "Email",
              prefixIcon: Icon(Iconsax.personalcard),
              
            ),
          ),
          const SizedBox(height: 12),



          
          ///   Submit button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: ()=> Navigator.of(context).pushNamed('/reset_password'),
            style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.blue),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

                          ),
             child:const Text("Submit",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,),
             ),
              
             ),
             
             
             ),
          
      


        ],
       ),       
      ),
    );
  }
}