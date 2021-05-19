class CourseModel {
  final int id;
  final String name;
  final String campus;
  final String form;
  final int credit;
  final int targetGrade;
  final String faculty;
  final String courseKey;
  final String classCode;
  final int year;
  final bool isFullOd;
  final String fieldLarge;
  final String fieldMiddle;
  final String fieldSmall;
  final String level;

  CourseModel({
    this.id, 
    this.name, 
    this.campus, 
    this.form, 
    this.credit, 
    this.targetGrade, 
    this.faculty, 
    this.courseKey, 
    this.classCode, 
    this.year, 
    this.isFullOd, 
    this.fieldLarge, 
    this.fieldMiddle, 
    this.fieldSmall, 
    this.level, 
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'],
      name: json['name'],
      campus: json['campus'],
      form: json['form'],
      credit: json['credit'],
      targetGrade: json['targetGrade'],
      faculty: json['faculty'],
      courseKey: json['courseKey'],
      classCode: json['classCode'],
      year: json['year'],
      isFullOd: json['isFullOd'],
      fieldLarge: json['fieldLarge'],
      fieldMiddle: json['fieldMiddle'],
      fieldSmall: json['fieldSmall'],
      level: json['level'],
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'campus': campus,
    'form': form,
    'credit': credit,
    'targetGrade': targetGrade,
    'faculty': faculty,
    'courseKey': courseKey,
    'classCode': classCode,
    'year': year,
    'isFullOd': isFullOd,
    'fieldLarge': fieldLarge,
    'fieldMiddle': fieldMiddle,
    'fieldSmall': fieldSmall,
    'level': level,
  };
}
