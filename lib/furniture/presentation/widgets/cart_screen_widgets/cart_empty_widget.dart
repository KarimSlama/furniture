import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';

class CartEmptyWidget extends StatelessWidget {
  const CartEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/cart.svg'),
        SizedBox(height: MediaQuery.of(context).size.height * .02),
        const Text(AppString.yourShoppingCartIsEmpty),
        SizedBox(height: MediaQuery.of(context).size.height * .02),
        const Text(AppString.lookingForIdeas),
        SizedBox(height: MediaQuery.of(context).size.height * .02),
        Align(
          alignment: AlignmentDirectional.center,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .7,
              maxHeight: MediaQuery.of(context).size.height * .07,
            ),
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 6, vertical: 4),
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
              color: AppColors.lightBlack,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppString.seePopularItems,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
