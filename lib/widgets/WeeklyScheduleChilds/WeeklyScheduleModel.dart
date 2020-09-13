class getLessons {
  String lessonName;
  int lesson_id;

  getLessons(
      {
        this.lessonName,
        this.lesson_id,
      });

  factory getLessons.fromJson(Map<String, dynamic> json) {
    return getLessons(
      lessonName: json['title'],
      lesson_id: json['id'],
    );
  }
}

class getWeeklySchedule {
  int lesson_id;
  int day;
  int part;

  getWeeklySchedule(
      {
        this.lesson_id,
        this.day,
        this.part,
        });

  factory getWeeklySchedule.fromJson(Map<String, dynamic> json) {
    return getWeeklySchedule(
      lesson_id: json['l_id'],
      day: json['day'],
      part: json['part'],
    );
  }
}