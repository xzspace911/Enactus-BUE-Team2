import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shosho_store/common/styles/spacing_styles.dart';
import 'package:shosho_store/features/authentication/screens/login/login.dart';
import 'package:shosho_store/utils/constans/image_string.dart';
import 'package:shosho_store/utils/constans/sizes.dart';
import 'package:shosho_store/utils/constans/text_strings.dart';
import 'package:shosho_store/utils/helpers/helper_functions.dart';
//==========================================================================================//

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
          Padding(
              padding:
              
                TSpaceingStyle.paddingWithAppBarHeight * 2,
                child: Column(
                  children: [

                    //===========================IMAGE============================//
                    Image(image: const AssetImage(TImages.staticSuccessIllustrations),
                    width: THelperFunctions.screenWidth()*0.6,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),




                    ///=======================Title======================///
                    Text(TTexts.yourAccountCreatedTitle,
                      style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),




                    ///=======================SubTitle======================///
                    Text(TTexts.yourAccountCreatedSubTitle,
                    style: Theme.of(context).textTheme.labelMedium , textAlign: TextAlign.center,                    
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),



                    //=======================Buttons========================///
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed:()=> Get.to(()=> const LoginScreen()),
                       child: const Text(TTexts.tContinue)),
                    ),
                  ],
                ),
          ),
      )
    );
  }
}
