class getLessonModle {
  String lessonName;
  int lesson_id;
  String stu_id;
  String study_time;
  String test_time;
  String test_num;

  getLessonModle(
      {
        this.lessonName,
        this.lesson_id,
        this.stu_id,
        this.study_time,
        this.test_time,
        this.test_num});

  factory getLessonModle.fromJson(Map<String, dynamic> json) {
    return getLessonModle(
      lessonName: json['lessonName'],
      lesson_id: json['lesson_id'],
      study_time: json['study_time'],
      test_time: json['test_time'],
      test_num: json['test_num'],
    );
  }
}