class Lesson_Model {
  final int id;
  String title;
  final int base_id;
  final int r_id;

  Lesson_Model({this.id, this.title, this.base_id, this.r_id});

  factory Lesson_Model.fromJson(Map<String, dynamic> json) {
    return Lesson_Model(
      id: json['id'],
      title: json['title'].toString(),
      base_id: json['base_id'],
      r_id: json['r_id'],
    );
  }
}
