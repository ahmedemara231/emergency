import 'package:emergency/src/features/onboarding/presentation/widgets/onboarding_controller.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/data_source/home_impl.dart';
import '../../features/home/data/repositories/get.dart';
import '../../features/home/presentation/blocs/home/cubit.dart';
import '../data_source/remote/api_service/service/dio_connection.dart';

class ServiceLocator {
  final _getIt = GetIt.instance;

  void setUpBlocs() {
    _getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(
          HomeGetRepo(HomeDataSourceImpl(
            DioConnection.getInstance(),
          )),
        ));
  }

  void setupServiceLocator() {
    _getIt.registerLazySingleton(() => OnboardingController());
  }
}
