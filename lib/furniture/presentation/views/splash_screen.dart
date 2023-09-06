import 'package:flutter/material.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/splash_bg.png', fit: BoxFit.cover),
          Container(
            height: 10,
            decoration: BoxDecoration(
              color: AppColors.lightBlack.withOpacity(.3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: MediaQuery.of(context).size.height * .1),
                Text(
                  AppString.welcome,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 36,
                      color: AppColors.white,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10),
                Text(
                  AppString.letsMakeYourHomeUniqueAndComfortable,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 20, color: AppColors.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .6),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Container(
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 6, vertical: 4),
                    width: MediaQuery.of(context).size.width * .7,
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlack.withOpacity(.6),
                      borderRadius: const BorderRadiusDirectional.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        AppString.getStarted,
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
            ),
          ),
        ],
      ),
    );
  }
}
