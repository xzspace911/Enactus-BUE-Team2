import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shosho_store/common/widgets/success_screen/success_screen.dart';
import 'package:shosho_store/features/authentication/screens/login/login.dart';
import '../../../../../utils/constans/image_string.dart';
import '../../../../../utils/constans/sizes.dart';
import '../../../../../utils/constans/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=> Get.offAll(()=> const LoginScreen()),  icon: const Icon(CupertinoIcons.clear) ),
        ],
      ),
      body : SingleChildScrollView(
        child:
          Padding(
              padding:
                const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [



                    //===================Image====================//
                    Image(image: AssetImage(TImages.deliveredEmailIllustrations),
                      width: THelperFunctions.screenWidth()*0.6,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),


                    //==========title&Subtitle====================//
                    Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text('support@codingwitht.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwItems),


                    //=================Buttons====================//
                    SizedBox(
                      width: double.infinity,
                      child:
                        ElevatedButton(onPressed: ()=> Get.to(()=> const SuccessScreen()),
                            child: const Text(TTexts.tContinue))
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    SizedBox(
                      width: double.infinity,
                      child: 
                        TextButton(onPressed: () {},
                            child: const Text(TTexts.resendEmail)),
                    )

                  ],
                ),
            ),

      )
    );
  }
}
