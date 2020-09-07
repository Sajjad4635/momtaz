class StudyHoursPerWeekModel {
  String StudyHoursPerWeek;
  String day0;


  StudyHoursPerWeekModel(
      {
        this.StudyHoursPerWeek,});

  factory StudyHoursPerWeekModel.fromJson(Map<String, dynamic> json) {
    return StudyHoursPerWeekModel(
        StudyHoursPerWeek: json['vlaue'].toString());
  }
}