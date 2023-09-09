import 'package:flutter/material.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';
import 'package:furniture/furniture/presentation/widgets/cart_screen_widgets/cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          const CartWidget(),
          const Row(
            children: [
              Text(AppString.totalPrice),
              Spacer(),
              Text('\$800'),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .07,
            decoration: const BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadiusDirectional.all(
                Radius.circular(5),
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppString.proceedToCheckout,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .02),
        ],
      ),
    );
  }
}
