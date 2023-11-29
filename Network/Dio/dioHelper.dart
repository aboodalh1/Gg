import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
class DioHelper {
  static late Dio dio;

  static init()
  {
    dio = Dio(BaseOptions(
      baseUrl: 'https://10.0.2.2:8000/api/',
      receiveDataWhenStatusError: true,
      // connectTimeout: Duration(seconds: 5 ),
      //   receiveTimeout : Duration(seconds: 3)
    ));
  }
  static Future<Response> getData(
      {required String path,
        Map<String, dynamic> ?query,
        String lang='en',
        String? token}) async
  {
    dio.options.headers =
    {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token??''
    };
    return await dio.get(
      path,
      queryParameters: query??null,
    );
  }

  static Future<Response> postData(
      {
        required String url,
        Map<String, dynamic>? query,
        required Map<String, dynamic> data,
        String? token}) async
  {
      dio.options.headers = {
      'Accept': 'application/json',
    };
    return dio.post(
        url,
        queryParameters: query,
        data: data);
  }

  static Future<Response> putData(
      {required String url,
        Map<String, dynamic>? query,
        required Map<String, dynamic> data,
        String lang="en",
        String? token}) async
  {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token ??''
    };
    return dio.put(
        url,
        queryParameters: query,
        data: data);
  }
  static Future<http.Response> login({
    required String email,
    required String password
  })async{
    Uri url = Uri.parse('https://10.0.2.2:8000/api/login');
    return http.post(url,body: {
      'phone':'$email',
      'password': '$password',
    });
  }
}