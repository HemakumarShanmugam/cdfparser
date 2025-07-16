import 'dart:convert';
import 'package:flutter/services.dart';
import 'header_model.dart';
import 'parameter_model.dart';

class JsonParser {
  static Future<Map<String, dynamic>> loadJsonFromAssets(String path) async {
    final jsonString = await rootBundle.loadString(path);
    return jsonDecode(jsonString);
  }

  static Future<HeaderModel> getHeader(String path) async {
    final json = await loadJsonFromAssets(path);
    return HeaderModel.fromJson(json['header']);
  }

  // static Future<List<ParameterModel>> getParameters(String path) async {
  //   final json = await loadJsonFromAssets(path);
  //   return (json['parameters'] as List)
  //       .map((p) => ParameterModel.fromJson(p))
  //       .toList();
  // }
}
