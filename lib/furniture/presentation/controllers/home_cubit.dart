import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture/furniture/presentation/controllers/home_state.dart';
import 'package:furniture/furniture/presentation/views/cart_screen.dart';
import 'package:furniture/furniture/presentation/views/home_screen.dart';
import 'package:furniture/furniture/presentation/views/profile_screen.dart';
import 'package:furniture/furniture/presentation/views/search_screen.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit getContext(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void changeBottomNavigation(int index) {
    currentIndex = index;
    emit(BottomNavigationBarChangedState());
  }
}
