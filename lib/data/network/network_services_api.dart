import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc_clean_code/data/exceptions/app_exceptions.dart';
import 'package:flutter_bloc_clean_code/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 60));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("");
    } on TimeoutException {
      throw RequestTimeoutException("Request timed out, try again!!");
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, data) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .post(Uri.parse(url), body: data.)
          .timeout(const Duration(seconds: 60));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("");
    } on TimeoutException {
      throw RequestTimeoutException("Request timed out, try again!!");
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .delete(Uri.parse(url))
          .timeout(const Duration(seconds: 60));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("");
    } on TimeoutException {
      throw RequestTimeoutException("Request timed out, try again!!");
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200: // success
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400: // bad request
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 401: // unauthorized
        throw UnAuthorizedException("");
      case 500: // error
        throw InternalServerErrorException();
      default:
        throw Exception("Unhandled exception please check!");
    }
  }
}
