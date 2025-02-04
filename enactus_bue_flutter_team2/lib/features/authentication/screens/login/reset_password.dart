import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
                    //===================Image====================//

                    // Image(image : AssetImage("assets/images/success.gif"), 
                    //   width: 250,
                    // ),
                    Image(image:AssetImage('assets/icons/email.gif'),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(height: 8),


                    //==========title&Subtitle====================//

                    Text("Change Your Password",style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                    const SizedBox(height: 8),

                    Text('support@codingwitht.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
                    const SizedBox(height: 8),

                    Text("Your Account security is our priority! , We've sent you a secure Link to safely change your password and keep you account protected",style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
                    const SizedBox(height: 24),


                    //=================Buttons====================//

                    SizedBox(
                      width: double.infinity,
                      child: 
                        ElevatedButton(onPressed: () => Navigator.of(context).pushNamed('/login'),child: const Text("Done")),),
                            
                    
                    const SizedBox(height: 6),


                    SizedBox(
                      width: double.infinity,
                      child: 
                        TextButton(onPressed: () => Navigator.of(context).pushNamed('/login'),child: const Text("Resend Email")),),
            ],
          ),
        ),
      ),
    );
  }
}