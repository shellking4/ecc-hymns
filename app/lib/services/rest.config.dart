import 'package:dio/dio.dart';

class APIEndpoints {
  static String localApiBaseUrl = "http://192.168.175.39:1337/api";
  static String networkApiBaseUrl = "http://192.168.175.39:1337/api";
  static String baseUrl = localApiBaseUrl;
  static final String gounHymnsUrl = "$baseUrl/goun-hymns?sort[0]=id%3Aasc";
  static final String frenchHymnsUrl = "$baseUrl/french-hymns";
  static final String englishHymnsUrl = "$baseUrl/english-hymns";
  static final String yorubaHymnsUrl = "$baseUrl/yoruba-hymns";
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
