import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:
        Padding(
          padding:
            const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text("Sign Up", style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 16),

                /// Form
                Form(
                    child:
                    Column(
                      children: [
                        Row(
                          children: [
                            //=============== First Name =======================
                            Expanded(
                              child: TextFormField(
                                expands : false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                    labelText: "First Name",
                                    prefixIcon: Icon(Iconsax.user),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            //=============== Last Name =======================
                            Expanded(
                              child: TextFormField(
                                expands : false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                  labelText: "Last Name",
                                  prefixIcon: Icon(Iconsax.user),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        //=============== UserName =======================
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            labelText: "Username",
                            prefixIcon: Icon(Iconsax.user_tag),
                          ),
                        ),
                        //=============== Mail =======================
                        const SizedBox(height: 12),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            labelText: "Email",
                            prefixIcon: Icon(Iconsax.personalcard),
                          ),
                        ),
                        //=============== Phone =======================
                        const SizedBox(height: 12),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            labelText: "Phone Number",
                            prefixIcon: Icon(Iconsax.call),
                          ),
                        ),
                        //=============== Password =======================
                        const SizedBox(height: 12),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            labelText: "Password",
                            prefixIcon: Icon(Iconsax.password_check),
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),
                        const SizedBox(height: 16),

                        //=============== Terms&Conditional CheckBox =======================
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child:
                                  Checkbox(value: true, onChanged: (value){})),
                                  const SizedBox(width: 8),
                                  Text.rich(TextSpan(
                                    children: [
                                      TextSpan(text: '${"I Agree to"}  ',
                                        style: Theme.of(context).textTheme.bodySmall,
                                    ),

                                TextSpan(text: '${"privacyPolicy"}  ',
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue,
                                  ),
                                ),

                                TextSpan(text: '${"and"}  ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),

                                TextSpan(text: "termsOfUse",
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue,
                                  ),
                                ),
                              ],
                              )
                            )

                          ],
                        ),
                        ///Sign up button
                        const SizedBox(height: 40),
                      ],
                    ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pushNamed('/login'),
                    style: ElevatedButton.styleFrom(
                      elevation: 30,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Coolvetica",
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
      
            
            
      );
  }
}