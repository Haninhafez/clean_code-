import 'package:clean_code_app/core/database/api/api_consumer.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio});

  @override
  Future get(String path, {Object? data, Map<String, dynamic>? queryParameters}) async {
    final response = await dio.get(path, queryParameters: queryParameters);
    return response.data;
  }

  @override
  Future post(String path, {dynamic data, Map<String, dynamic>? queryParameters, bool isFormData = false}) async {
    final response = await dio.post(path, data: data);
    return response.data;
  }

  @override
  Future patch(String path, {dynamic data, Map<String, dynamic>? queryParameters, bool isFormData = false}) async {
    final response = await dio.patch(path, data: data);
    return response.data;
  }

  @override
  Future delete(String path, {Object? data, Map<String, dynamic>? queryParameters}) async {
    final response = await dio.delete(path, data: data);
    return response.data;
  }
  
}