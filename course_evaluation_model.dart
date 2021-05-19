class CourseEvaluationModel {
  String name;
  int rate;
  String detail;

  CourseEvaluationModel({
    this.name, 
    this.rate, 
    this.detail, 
  });

  factory CourseEvaluationModel.fromJson(Map<String, dynamic> json) {
    return CourseEvaluationModel(
      name: json['name'],
      rate: json['rate'],
      detail: json['detail'],
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'rate': rate,
    'detail': detail,
  };
}
