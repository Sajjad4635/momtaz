class getKhodnevisiInfo {
  String LessonTitle;
  String h_Read;
  String h_Test;
  String T_Number;

  getKhodnevisiInfo(
      {
        this.LessonTitle,
        this.h_Read,
        this.h_Test,
        this.T_Number
      });

  factory getKhodnevisiInfo.fromJson(Map<String, dynamic> json) {
    return getKhodnevisiInfo(
        LessonTitle: json['vlaue'].toString(),
      h_Read: json['val'].toString(),
      h_Test: json['val'].toString(),
      T_Number: json['val'].toString()
    );
  }
}