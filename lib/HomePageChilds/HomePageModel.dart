class imageSlider {
  String ImageVlaue;

  imageSlider(
      {
        this.ImageVlaue,});

  factory imageSlider.fromJson(Map<String, dynamic> json) {
    return imageSlider(
        ImageVlaue: json['vlaue'].toString());
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
