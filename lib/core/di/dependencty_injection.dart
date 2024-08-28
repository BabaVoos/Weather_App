import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repos/five_days_forecast_data_repo.dart';
import '../networking/api_service.dart';
import '../../features/home/logic/cubit/home_cubit.dart';
import '../../features/home/data/repos/current_weather_data_repo.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Home
  getIt.registerLazySingleton<CurrentWeatherDataRepo>(
      () => CurrentWeatherDataRepo(getIt()));

  getIt.registerLazySingleton<FiveDaysForecastDataRepo>(
      () => FiveDaysForecastDataRepo(getIt()));

  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt(), getIt()));
}
