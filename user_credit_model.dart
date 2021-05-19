class UserCreditModel {
  int userCreditID;
  int courseCredit;
  int coursePeriod;
  String courseName;
  String coursePlace;
  String courseDay;

  UserCreditModel({
    this.userCreditID, 
    this.courseCredit, 
    this.coursePeriod, 
    this.courseName, 
    this.coursePlace, 
    this.courseDay, 
  });

  factory UserCreditModel.fromJson(Map<String, dynamic> json) {
    return UserCreditModel(
      userCreditID: json['userCreditID'],
      courseCredit: json['courseCredit'],
      coursePeriod: json['coursePeriod'],
      courseName: json['courseName'],
      coursePlace: json['coursePlace'],
      courseDay: json['courseDay'],
    );
  }

  Map<String, dynamic> toMap() => {
    'userCreditID': userCreditID,
    'courseCredit': courseCredit,
    'coursePeriod': coursePeriod,
    'courseName': courseName,
    'coursePlace': coursePlace,
    'courseDay': courseDay,
  };
}
