import 'package:emergency/src/core/data_source/remote/api_service/service/dio_connection.dart';
import 'package:emergency/src/features/home/data/data_source/home_impl.dart';
import 'package:emergency/src/features/home/data/repositories/get.dart';
import 'package:emergency/src/features/home/presentation/blocs/home/cubit.dart';
import 'package:get_it/get_it.dart';

class HomeDependencies{
  static final GetIt homeLocator = GetIt.instance;
  static setBloc(){
    homeLocator.resetLazySingleton<HomeCubit>(
      instance: HomeCubit(
          HomeGetRepo(
              HomeDataSourceImpl(
                  DioConnection.getInstance()
              )
          )
      ),
    );
  }

}