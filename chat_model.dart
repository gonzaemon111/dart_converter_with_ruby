class ChatModel {
    String name;
    String value;
    String imageURL;
    int courseID;
    String createdAt;

  ChatModel({
    this.name, 
    this.value, 
    this.imageURL, 
    this.courseID, 
    this.createdAt, 
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      name: json['name'],
      value: json['value'],
      imageURL: json['imageURL'],
      courseID: json['courseID'],
      createdAt: json['createdAt'],
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'value': value,
    'imageURL': imageURL,
    'courseID': courseID,
    'createdAt': createdAt,
  };
}
