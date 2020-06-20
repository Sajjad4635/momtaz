class imageSlider {
  final int ImageId;
  final int ImageType;
  String ImageVlaue;

  imageSlider(
      {this.ImageId,
        this.ImageType,
        this.ImageVlaue,});

  factory imageSlider.fromJson(Map<String, dynamic> json) {
    return imageSlider(
        ImageId: json['id'],
        ImageType: json['type'],
        ImageVlaue: json['vlaue'].toString());
  }
}
