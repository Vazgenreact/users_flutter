class Constants {
  static const String HTTPS_SCHEME = 'https://';

  // Weather
  static const String WEATHER_APP_ID = 'af58fb53d0454950bed35eab9fca1a25';
  static const String WEATHER_BASE_URL_DOMAIN = 'api.openweathermap.org';
  static const String WEATHER_FORECAST_PATH = '/data/2.5/weather';
  static const String WEATHER_IMAGES_PATH = '/img/w/';
  static const String WEATHER_IMAGES_URL =
      HTTPS_SCHEME + WEATHER_BASE_URL_DOMAIN + WEATHER_IMAGES_PATH;

  // Posts
  static const String POSTS_BASE_URL = 'jsonplaceholder.typicode.com';
  static const String POSTS_USERS = '/users';
  static const String POSTS_POSTS = '/posts';
}
