import 'package:flutter/material.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/models/weather_forecast_daily.dart';

class WeatherForecastScreen extends StatefulWidget {
  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  Future<WeatherForecast> forecastObject;
  String _cityName = 'London,uk';

  @override
  void initState() {
    super.initState();
    forecastObject = WeatherApi().fetchWeatherCity(cityName: _cityName);

    forecastObject.then((value) {
      print(value.main);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
