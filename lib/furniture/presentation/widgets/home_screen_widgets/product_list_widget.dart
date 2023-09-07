import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture/core/utils/fonts/icon_broken.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Material(
          elevation: 5,
          shadowColor: AppColors.white.withOpacity(.5),
          borderRadius: BorderRadiusDirectional.circular(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Modern Urban Design'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
                      Text(
                        'Living Room Lobby Sofa',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 15,
                              color: AppColors.grey,
                            ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
                      RatingBarIndicator(
                        itemSize: 20,
                        direction: Axis.horizontal,
                        rating: 5,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: AppColors.yellow,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        children: [
                          Text(
                            '\$502.75',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: AppColors.green),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .03),
                          Text(
                            '\$696',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    color: AppColors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(IconBroken.Bag_2),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(IconBroken.Heart),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/images/sofa1.png',
                width: MediaQuery.of(context).size.width * .35,
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) =>
            SizedBox(height: MediaQuery.of(context).size.height * .03),
        itemCount: 100,
      ),
    );
  }
}
