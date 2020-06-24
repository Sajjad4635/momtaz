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

class getLessonModle {
  int id;
  String date_time;
  int l_id;
  int stu_id;
  int study_time;
  int test_time;
  int test_count;

  getLessonModle(
      {this.id,
      this.date_time,
      this.l_id,
      this.stu_id,
      this.study_time,
      this.test_time,
      this.test_count});

  factory getLessonModle.fromJson(Map<String, dynamic> json) {
    return getLessonModle(
      id: json['id'],
      date_time: json['date_time'].toString(),
      l_id: json['l_id'],
      stu_id: json['stu_id'],
      study_time: json['study_time'],
      test_time: json['test_time'],
      test_count: json['test_count'],
    );
  }
}
