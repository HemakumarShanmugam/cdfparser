// class HeaderModel {
//   final String code;
//   final String name;
//   final String version;

//   HeaderModel({required this.code, required this.name, required this.version});

//   factory HeaderModel.fromJson(Map<String, dynamic> json) {
//     return HeaderModel(
//       code: json['code'],
//       name: json['name'],
//       version: json['version'],
//     );
//   }
// }

class CodeNumber {
  final String? codeNumber;
  final String? text;

  CodeNumber({this.codeNumber, this.text});

  factory CodeNumber.fromJson(Map<String, dynamic> json) {
    return CodeNumber(
      codeNumber: json['CodeNumber']?.toString(),
      text: json['Text'],
    );
  }
}
class HeaderModel {

  final String? AppFamilyName;
  final String? description;
  final int? swVersion;
  final List<CodeNumber>? codeNumbers;

  HeaderModel({this.AppFamilyName, this.description, this.swVersion, this.codeNumbers});

  factory HeaderModel.fromJson(Map<String, dynamic> json) {
    return HeaderModel(
      AppFamilyName: json['AppFamilyName'],
      description: json['Description'],
      swVersion: json['SWVersion'],
      codeNumbers: (json['CodeNumbers'] as List<dynamic>?)
          ?.map((e) => CodeNumber.fromJson(e))
          .toList(),
    );
  }
}


