class CourseProfessorModel {
  int id;
  String value;

  CourseProfessorModel({
    this.id, 
    this.value, 
  });

  factory CourseProfessorModel.fromJson(Map<String, dynamic> json) {
    return CourseProfessorModel(
      id: json['id'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'value': value,
  };
}
