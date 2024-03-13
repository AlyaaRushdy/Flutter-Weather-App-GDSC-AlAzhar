import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_state_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services.dart/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherServices(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherSuccessState(weatherModel: weatherModel!));
    } catch (e) {
      log(e.toString());
      emit(WeatherFailureState());
    }
  }
}
