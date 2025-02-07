import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
                    //===================Image====================//
                    Image(image:AssetImage('assets/icons/email.gif'),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(height: 8),


                    //==========title&Subtitle====================//

                    Text("Change Your Password",style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                    const SizedBox(height: 8),

                    Text('support@codingwithme.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
                    const SizedBox(height: 8),

                    Text("Your Account security is our priority! , We've sent you a secure Link to safely change your password and keep you account protected",style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
                    const SizedBox(height: 24),


                    //=================Buttons====================//

                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blue, Colors.purple],
                          ),
                      ),
                      child: 
                        ElevatedButton(onPressed: () => Navigator.of(context).pushNamed('/login'),
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.transparent),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

                          ),
                        child: const Text("Done",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: "Coolvetica",
                            
                            ),),
                        
                        )),
                            
                    
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