class HeaderModel {
  final String code;
  final String name;
  final String version;

  HeaderModel({required this.code, required this.name, required this.version});

  factory HeaderModel.fromJson(Map<String, dynamic> json) {
    return HeaderModel(
      code: json['code'],
      name: json['name'],
      version: json['version'],
    );
  }
}
