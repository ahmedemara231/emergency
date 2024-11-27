import 'package:emergency/src/features/home/presentation/blocs/home/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositories/get.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeGetRepo) : super(HomeState.initial());
  late final HomeGetRepo _homeGetRepo;
  Future<void> getHomeData()async{
    emit(state.copyWith(state: States.homeDataLoading));
    final result = await _homeGetRepo.getHomeData();
    result.when(
            (success) => emit(
                state.copyWith(state: States.homeDataSuccess,
                  homeData: result.getOrThrow()
                )),
            (error) => emit(
                state.copyWith(state: States.homeDataError,
                  errorMessage: result.tryGetError()!.message
                )),
    );
  }

}