import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 3                                                                                                                                                                                                                     ,
        itemBuilder: (context, index) => Material(
          elevation: 5,
          shadowColor: AppColors.white.withOpacity(.5),
          borderRadius: BorderRadiusDirectional.circular(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/chair.png',
                width: MediaQuery.of(context).size.width * .35,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width * .37),
                      child: const Text(
                        'Queen Queen Queen',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Text(
                      'Green',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 15,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Text(
                      'Hx32.5' 'Wx31.5',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 15,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Text(
                      '\$502.75',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.green),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/plus.svg'),
                  ),
                  const Text('1'),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/minus.svg'),
                  ),
                ],
              )
            ],
          ),
        ),
        separatorBuilder: (context, index) =>
            SizedBox(height: MediaQuery.of(context).size.height * .02),
      ),
    );
  }
}
