class UserResponseModel {
  final String name;
  final String email;
  final String code;
  final int id;
  final String uid;

  UserResponseModel({
    this.name, 
    this.email, 
    this.code, 
    this.id, 
    this.uid, 
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    return UserResponseModel(
      name: json['name'],
      email: json['email'],
      code: json['code'],
      id: json['id'],
      uid: json['uid'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'code': code,
    'id': id,
    'uid': uid,
  };
}
