import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shosho_store/common/widgets/login_signup/form_divider.dart';
import 'package:shosho_store/common/widgets/login_signup/social_buttons.dart';
import 'package:shosho_store/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:shosho_store/utils/constans/text_strings.dart';
import 'package:shosho_store/utils/helpers/helper_functions.dart';
import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';


///-------------------------------------------------------///
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:
        Padding(
          padding:
            const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwSections),

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
                                  labelText: TTexts.firstName,
                                  prefixIcon: Icon(Iconsax.user),
                                ),
                              ),
                            ),
                            const SizedBox(width: TSizes.spaceBtwInputFields),
                            //=============== Last Name =======================
                            Expanded(
                              child: TextFormField(
                                expands : false,
                                decoration: const InputDecoration(
                                  labelText: TTexts.lastName,
                                  prefixIcon: Icon(Iconsax.user),
                                ),
                              ),
                            ),



                          ],

                        ),
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        //=============== UserName =======================
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: TTexts.username,
                            prefixIcon: Icon(Iconsax.user_edit),
                          ),
                        ),
                        //=============== Mail =======================
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: TTexts.email,
                            prefixIcon: Icon(Iconsax.direct),
                          ),
                        ),
                        //=============== Phone =======================
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: TTexts.phoneNp,
                            prefixIcon: Icon(Iconsax.call),
                          ),
                        ),
                        //=============== Password =======================
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextFormField(
                          expands : false,
                          decoration: const InputDecoration(
                            labelText: TTexts.password,
                            prefixIcon: Icon(Iconsax.password_check),
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        //=============== Terms&Conditional CheckBox =======================
                        Row(
                          children: [
                            SizedBox(
                                width: 24,
                                height: 24,
                                child:
                                  Checkbox(value: true, onChanged: (value){})),
                            const SizedBox(width: TSizes.spaceBtwItems),
                            Text.rich(TextSpan(
                              children: [
                                TextSpan(text: '${TTexts.iAgreeTo}  ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),

                                TextSpan(text: '${TTexts.privacyPolicy}  ',
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                    color: dark ? TColors.white : TColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark ? TColors.white :TColors.primary,
                                  ),
                                ),

                                TextSpan(text: '${TTexts.and}  ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),

                                TextSpan(text: TTexts.termsOfUse,
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                    color: dark ? TColors.white : TColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark ? TColors.white :TColors.primary,
                                  ),
                                ),
                              ],
                              )
                            )

                          ],
                        ),
                        ///Sign up button
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        SizedBox(width: double.infinity, child: ElevatedButton(
                            onPressed: ()=>Get.to(() => const VerifyEmailScreen()),
                            child: const Text(TTexts.createAccount))),
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        /// Divider

                        ///=========Social Media ==========================
                        TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        const TSocialButtons(),
                        const SizedBox(height: TSizes.spaceBtwSections),


                      ],
                    ),
                ),
              ],
            ),
        ),
      ),

    );
  }
}


