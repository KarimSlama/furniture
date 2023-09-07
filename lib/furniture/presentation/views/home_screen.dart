import 'package:flutter/material.dart';
import 'package:furniture/core/utils/fonts/icon_broken.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';
import 'package:furniture/furniture/presentation/widgets/home_screen_widgets/catergory_list_widget.dart';
import 'package:furniture/furniture/presentation/widgets/home_screen_widgets/product_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          Material(
            elevation: 5,
            shadowColor: AppColors.white.withOpacity(.5),
            borderRadius: BorderRadiusDirectional.circular(20),
            child: TextFormField(
              controller: searchController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: AppString.search,
                prefixIcon: Icon(
                  IconBroken.Search,
                ),
                suffixIcon: Icon(Icons.qr_code_scanner),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
          const CategoryListWidget(),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
          const ProductListWidget(),
        ],
      ),
    );
  }
}
