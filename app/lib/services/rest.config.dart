import 'package:dio/dio.dart';

class APIEndPoints {
  static String baseUrl = "http://192.168.0.108:1337/api";
  static final gounHymnsUrl = "$baseUrl/goun-hymns";
  static final frenchHymnsUrl = "$baseUrl/french-hymns";
  static final englishHymnsUrl = "$baseUrl/english-hymns";
  static final yorubaHymnsUrl = "$baseUrl/yoruba-hymns";
}

class HTTP {
  static final BaseOptions options = BaseOptions(
      connectTimeout: Duration(seconds: 8000),
      followRedirects: false,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
      validateStatus: (status) {
        return status! < 500;
      });
  static final Dio client = Dio(options);
}

