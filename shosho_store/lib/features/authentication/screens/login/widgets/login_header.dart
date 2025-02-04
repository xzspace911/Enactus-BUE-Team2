import 'package:flutter/material.dart';
import 'package:shosho_store/utils/constans/text_strings.dart';
import 'package:shosho_store/utils/helpers/helper_functions.dart';
import '../../../../../../utils/constans/image_string.dart';
import '../../../../../../utils/constans/sizes.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          width: double.infinity,
          image: AssetImage(dark ? TImages.lightAppLogo: TImages.darkAppLogo),
        ),
        Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm),
        Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}