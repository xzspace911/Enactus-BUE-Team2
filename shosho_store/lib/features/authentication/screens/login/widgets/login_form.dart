import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shosho_store/features/authentication/screens/signup/widgets/signup.dart';
import 'package:shosho_store/utils/constans/text_strings.dart';
import '../../../../../utils/constans/sizes.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [



            //----------------------Email----------------------
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),



            //----------------------Password--------------------
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2,),



            //-----------Remember me & forget password-----------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                ///---------------remember me ------------------
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe)
                  ],
                ),



                ///---------------Forget password-------------
                TextButton(
                  onPressed: (){},
                  child: const Text(TTexts.forgetPassword),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),




                ///-------------------Sign in button-----------
                SizedBox(width: double.infinity,
                  child:
                  ElevatedButton(
                      onPressed: (){},
                      child: Text(TTexts.signIn)
                  ),
                ),


                ///---------------------Create account-----------
                SizedBox(width: double.infinity,
                  child:
                  OutlinedButton(
                      onPressed: ()=> Get.to(()=> const SignupScreen()),
                      child: Text(TTexts.createAccount)
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            )
          ],
        ),
      ),
    );
  }
}



