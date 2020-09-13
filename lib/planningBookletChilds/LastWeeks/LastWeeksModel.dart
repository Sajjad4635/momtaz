class getLastWeeks {
  int weekId;
  int weekNumber;
  String startWeekDate;
  String endWeekDate;
  int year;

  getLastWeeks(
      {
        this.weekId,
        this.weekNumber,
        this.startWeekDate,
        this.endWeekDate,
      this.year});

  factory getLastWeeks.fromJson(Map<String, dynamic> json) {
    return getLastWeeks(
      weekId: json['id'],
      weekNumber: json['num'],
      startWeekDate: json['start'],
      endWeekDate: json['end'],
      year: json['year']
    );
  }
}