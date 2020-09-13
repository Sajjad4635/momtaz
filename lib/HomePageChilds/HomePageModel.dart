class imageSlider {
  String id;
  String type;
  String value;

  imageSlider(
      {
        this.id, this.type, this.value});

  factory imageSlider.fromJson(Map<String, dynamic> json) {
    return imageSlider(
        id: json['id'].toString(),
        type: json['type'].toString(),
        value: json['vlaue'].toString(),

    );
  }
}

class MotivationalSentence {
  String motivationalSentence;

  MotivationalSentence(
      {
        this.motivationalSentence,});

  factory MotivationalSentence.fromJson(Map<String, dynamic> json) {
    return MotivationalSentence(
        motivationalSentence: json['vlaue'].toString());
  }
}
