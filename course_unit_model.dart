class CourseUnitModel {
  String objectId;
  int courseId;
  int courseUnitId;
  String classRoom;
  String day;
  String name;
  String term;
  int year;
  int period;
  String field;
  String faculty;
  String courseKey;
  String classCode;

  CourseUnitModel({
    this.objectId, 
    this.courseId, 
    this.courseUnitId, 
    this.classRoom, 
    this.day, 
    this.name, 
    this.term, 
    this.year, 
    this.period, 
    this.field, 
    this.faculty, 
    this.courseKey, 
    this.classCode, 
  });

  factory CourseUnitModel.fromJson(Map<String, dynamic> json) {
    return CourseUnitModel(
      objectId: json['objectId'],
      courseId: json['courseId'],
      courseUnitId: json['courseUnitId'],
      classRoom: json['classRoom'],
      day: json['day'],
      name: json['name'],
      term: json['term'],
      year: json['year'],
      period: json['period'],
      field: json['field'],
      faculty: json['faculty'],
      courseKey: json['courseKey'],
      classCode: json['classCode'],
    );
  }

  Map<String, dynamic> toMap() => {
    'objectId': objectId,
    'courseId': courseId,
    'courseUnitId': courseUnitId,
    'classRoom': classRoom,
    'day': day,
    'name': name,
    'term': term,
    'year': year,
    'period': period,
    'field': field,
    'faculty': faculty,
    'courseKey': courseKey,
    'classCode': classCode,
  };
}
