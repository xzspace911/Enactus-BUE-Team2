import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shosho_store/features/authentication/screens/login/login.dart';
import 'package:shosho_store/utils/constans/image_string.dart';
import 'package:shosho_store/utils/constans/sizes.dart';
import 'package:shosho_store/utils/constans/text_strings.dart';
import 'package:shosho_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=> Get.back, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
                    //===================Image====================//

                    Image(image : const AssetImage(TImages.deliveredEmailIllustrations), 
                      width: THelperFunctions.screenWidth()*0.6,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),


                    //==========title&Subtitle====================//

                    Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    Text('support@codingwitht.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwItems),


                    //=================Buttons====================//

                    SizedBox(
                      width: double.infinity,
                      child: 
                        ElevatedButton(onPressed: () => Get.to(()=> const LoginScreen()),
                            child: const Text(TTexts.done)),
                    ),
                    const SizedBox(height: TSizes.sm),


                    SizedBox(
                      width: double.infinity,
                      child: 
                        TextButton(onPressed: () => Get.to(()=> const LoginScreen()),
                            child: const Text(TTexts.resendEmail)),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}