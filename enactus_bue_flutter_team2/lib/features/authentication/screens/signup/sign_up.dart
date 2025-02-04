import 'package:flutter/material.dart';

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
                                  labelText: "First Name",
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            //=============== Last Name =======================
                            Expanded(
                              child: TextFormField(
                                expands : false,
                                decoration: const InputDecoration(
                                  labelText: "Last Name",
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                            ),



                          ],

                        ),
                        const SizedBox(height: 8),
                        //=============== UserName =======================
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: "Username",
                            prefixIcon: Icon(Icons.person_2_rounded),
                          ),
                        ),
                        //=============== Mail =======================
                        const SizedBox(height: 8),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.mail),
                          ),
                        ),
                        //=============== Phone =======================
                        const SizedBox(height: 8),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: "Phone Number",
                            prefixIcon: Icon(Icons.call),
                          ),
                        ),
                        //=============== Password =======================
                        const SizedBox(height: 8),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                        const SizedBox(height: 8),

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
                                TextSpan(text: '${"I Agree to "}  ',
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
                        const SizedBox(height: 24),
                        SizedBox(width: double.infinity, child: ElevatedButton(
                            onPressed: ()=>{},
                            child: const Text("Create Account"))),
                        const SizedBox(height: 8),
                        /// Divider

                        


                      ],
                    ),
                ),
              ],
            ),
        ),
      ));
  }
}