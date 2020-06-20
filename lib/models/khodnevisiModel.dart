class testModel {
  final int id;
  String title;
  final int base_id;
  final int r_id;

  testModel({this.id, this.title, this.base_id, this.r_id});

  factory testModel.fromJson(Map<String, dynamic> json) {
    return testModel(
        id: json['id'],
        title: json['title'].toString(),
        base_id: json['base_id'],
        r_id: json['r_id']);
  }
}