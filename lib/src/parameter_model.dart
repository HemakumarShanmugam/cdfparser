// class ParameterModel {
//   final String id;
//   final String label;
//   final String value;

//   ParameterModel({required this.id, required this.label, required this.value});

//   factory ParameterModel.fromJson(Map<String, dynamic> json) {
//     return ParameterModel(
//       id: json['id'],
//       label: json['label'],
//       value: json['value'],
//     );
//   }
// }
class Parameter {
  final int? idx;
  final String? label;
  final String? text;
  final int? uniqueId;
  final int? vid;
  final double? min;
  final double? max;
  final double? defaultValue;
  final int? dataType;
  final int? decimals;
  final String? itemType;
  final String? itemCategory;

  Parameter({
    this.idx,
    this.label,
    this.text,
    this.uniqueId,
    this.vid,
    this.min,
    this.max,
    this.defaultValue,
    this.dataType,
    this.decimals,
    this.itemType,
    this.itemCategory,
  });

  factory Parameter.fromJson(Map<String, dynamic> json) {
    return Parameter(
      idx: json['Idx'],
      label: json['Label'],
      text: json['Text'],
      uniqueId: json['UniqueID'],
      vid: json['Vid'],
      min: (json['Min'] as num?)?.toDouble(),
      max: (json['Max'] as num?)?.toDouble(),
      defaultValue: (json['Default'] as num?)?.toDouble(),
      dataType: json['DataType'],
      decimals: json['Decimals'],
      itemType: json['ItemType'],
      itemCategory: json['ItemCategory'],
    );
  }
}
