class TimeTableModel {
  final int id;
  final int userId;
  final String term;
  final int year;
  final String createdAt;
  final String updatedAt;

  TimeTableModel({
    this.id, 
    this.userId, 
    this.term, 
    this.year, 
    this.createdAt, 
    this.updatedAt, 
  });

  factory TimeTableModel.fromJson(Map<String, dynamic> json) {
    return TimeTableModel(
      id: json['id'],
      userId: json['userId'],
      term: json['term'],
      year: json['year'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'term': term,
    'year': year,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };
}
