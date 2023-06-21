import 'package:dio/dio.dart';

class APIEndpoints {
  static String localApiBaseUrl = "http://192.168.91.39:1337/api";
  static String onlineApiBaseUrl = "https://ecc-hymns-cms.metatronicx.io/api";
  static String baseUrl = onlineApiBaseUrl;
  static final String gounHymnsUrl = "$baseUrl/goun-hymns";
  static final String frenchHymnsUrl = "$baseUrl/french-hymns";
  static final String englishHymnsUrl = "$baseUrl/english-hymns";
  static final String yorubaHymnsUrl = "$baseUrl/yoruba-hymns";
  static final String hymnsProgramsUrl = "$baseUrl/hymns-programs";
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
