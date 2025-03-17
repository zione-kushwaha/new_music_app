import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/device/Tdevice.dart';
import '../../utils/helper/Thelper.dart';
import '../../utils/theme/constants/colors.dart';
import '../../utils/theme/constants/sizes.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_favorite,
    this.showBackgroud = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackgroud, showBorder;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackgroud
                ? darkMode
                    ? TColors.grey.withOpacity(0.1)
                    : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(
                    color: darkMode ? TColors.dark : TColors.light,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: !darkMode ? TColors.dark : TColors.light,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
