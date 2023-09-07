import 'package:furniture/furniture/presentation/controllers/home_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerFactory(() => HomeCubit());
  }
}
