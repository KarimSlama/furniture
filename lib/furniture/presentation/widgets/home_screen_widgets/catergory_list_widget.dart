import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .12,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => Column(
                children: [
                  Material(
                    elevation: 8,
                    shadowColor: AppColors.white.withOpacity(.9),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset('assets/images/popular.svg',
                          width: MediaQuery.of(context).size.width * .11),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    AppString.popular,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16),
                  )
                ],
              ),
          separatorBuilder: (context, index) =>
              SizedBox(width: MediaQuery.of(context).size.width * .06),
          itemCount: 8),
    );
  }
}
