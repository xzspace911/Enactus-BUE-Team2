import 'package:flutter/material.dart';

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
              labelText: "Email",
              prefixIcon: Icon(Icons.send),
              
            ),
          ),
          const SizedBox(height: 16),



          
          ///   Submit button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: ()=> Navigator.of(context).pushNamed('/reset_password'),
             child:const Text("Submit"),),
             
             
             ),
          
      


        ],
       ),       
      ),
    );
  }
}