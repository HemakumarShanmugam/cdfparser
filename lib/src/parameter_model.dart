class ParameterModel {
  final String id;
  final String label;
  final String value;

  ParameterModel({required this.id, required this.label, required this.value});

  factory ParameterModel.fromJson(Map<String, dynamic> json) {
    return ParameterModel(
      id: json['id'],
      label: json['label'],
      value: json['value'],
    );
  }
}
