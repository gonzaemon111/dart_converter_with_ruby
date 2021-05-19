class TimeTableCreateResponseModel {
  final int id;
  final String term;
  final int year;
  final String createdAt;
  final String updatedAt;

  TimeTableCreateResponseModel({
    this.id, 
    this.term, 
    this.year, 
    this.createdAt, 
    this.updatedAt, 
  });

  factory TimeTableCreateResponseModel.fromJson(Map<String, dynamic> json) {
    return TimeTableCreateResponseModel(
      id: json['id'],
      term: json['term'],
      year: json['year'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'term': term,
    'year': year,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };

  TimeTableCreateResponseModel({
    this.id, 
    this.term, 
    this.year, 
    this.createdAt, 
    this.updatedAt, 
    this.}), 
    this.), 
    this.}, 
  });

  factory TimeTableCreateResponseModel.fromJson(Map<String, dynamic> json) {
    return TimeTableCreateResponseModel(
      id: json['id'],
      term: json['term'],
      year: json['year'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      }): json['})'],
      ): json[')'],
      }: json['}'],
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'term': term,
    'year': year,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
    '})': }),
    ')': ),
    '}': },
  };
}
