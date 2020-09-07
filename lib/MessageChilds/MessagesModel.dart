class getMessagesFromServer {
  String ImageVlaue;

  getMessagesFromServer(
      {
        this.ImageVlaue,});

  factory getMessagesFromServer.fromJson(Map<String, dynamic> json) {
    return getMessagesFromServer(
        ImageVlaue: json['vlaue'].toString());
  }
}