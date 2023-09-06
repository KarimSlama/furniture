import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/utils/fonts/icon_broken.dart';
import 'package:furniture/core/utils/theme/app_colors/app_colors.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';
import 'package:furniture/furniture/presentation/views/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/sofa.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * .4,
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(60),
                    topStart: Radius.circular(60),
                  ),
                  color: AppColors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: Column(
                  children: [
                    Text(AppString.signIn,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 25)),
                    SizedBox(height: MediaQuery.of(context).size.height * .04),
                    Material(
                      elevation: 5,
                      shadowColor: AppColors.white.withOpacity(.5),
                      borderRadius: BorderRadiusDirectional.circular(20.0),
                      color: Colors.white,
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: AppString.email,
                          prefixIcon: Icon(
                            IconBroken.Message,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),
                    Material(
                      elevation: 5,
                      shadowColor: AppColors.white.withOpacity(.5),
                      borderRadius: BorderRadiusDirectional.circular(20.0),
                      color: Colors.white,
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: AppString.password,
                          prefixIcon: Icon(
                            IconBroken.Password,
                          ),
                          suffixIcon: Icon(IconBroken.Show),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          AppString.forgetPassword,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 15,
                                    color: AppColors.grey,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
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
                          AppString.signIn,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.white,
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .04),
                    Text(
                      AppString.orContinueWith,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 16,
                            color: AppColors.grey,
                          ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .04),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/images/apple.svg',
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/images/google.svg',
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/images/facebook.svg',
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.newUser,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                          },
                          child: Text(
                            AppString.signUp,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 16, color: AppColors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
