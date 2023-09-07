import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture/core/services/services_locator.dart';
import 'package:furniture/core/utils/fonts/icon_broken.dart';
import 'package:furniture/core/utils/theme/app_string/app_string.dart';
import 'package:furniture/furniture/presentation/controllers/home_cubit.dart';
import 'package:furniture/furniture/presentation/controllers/home_state.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconBroken.Notification,
                  ),
                ),
              ],
            ),
            body: HomeCubit.getContext(context)
                .screens[HomeCubit.getContext(context).currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                onTap: (value) {
                  HomeCubit.getContext(context).changeBottomNavigation(value);
                },
                currentIndex: HomeCubit.getContext(context).currentIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(IconBroken.Home), label: AppString.home),
                  BottomNavigationBarItem(
                      icon: Icon(IconBroken.Search), label: AppString.search),
                  BottomNavigationBarItem(
                      icon: Icon(IconBroken.Bag), label: AppString.cart),
                  BottomNavigationBarItem(
                      icon: Icon(IconBroken.Profile), label: AppString.profile)
                ]),
          );
        },
      ),
    );
  }
}
