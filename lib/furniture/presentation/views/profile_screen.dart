import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture/core/utils/fonts/icon_broken.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Text(
              AppString.account,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        FontAwesomeIcons.userPen,
                        size: 20,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.editProfile),
                  ],
                ),
              ),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height * .01),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        Icons.privacy_tip_outlined,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.security),
                  ],
                ),
              ),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height * .01),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        IconBroken.Notification,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.notifications),
                  ],
                ),
              ),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height * .01),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        IconBroken.Lock,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.privacy),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            Text(
              AppString.supportAbout,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        IconBroken.Star,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.mySubscription),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        Icons.help_outline_outlined,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.helpSupport),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        IconBroken.Paper,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.termsAndPolicies),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            Text(
              AppString.actions,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        Icons.flag_outlined,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.reportAProblem),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        IconBroken.Add_User,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.addAccount),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsetsDirectional.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.yellow,
                      child: Icon(
                        IconBroken.Logout,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .06,
                    ),
                    const Text(AppString.logOut),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
