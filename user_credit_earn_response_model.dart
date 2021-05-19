class UserCreditEarnResponseModel {
  int a1;
  int a2;
  int b1;
  int b2;
  int b3;
  int b4;
  int mustReuired;
  int selectRequired;
  int select;
  int d;

  UserCreditEarnResponseModel({
    this.a1, 
    this.a2, 
    this.b1, 
    this.b2, 
    this.b3, 
    this.b4, 
    this.mustReuired, 
    this.selectRequired, 
    this.select, 
    this.d, 
  });

  factory UserCreditEarnResponseModel.fromJson(Map<String, dynamic> json) {
    return UserCreditEarnResponseModel(
      a1: json['a1'],
      a2: json['a2'],
      b1: json['b1'],
      b2: json['b2'],
      b3: json['b3'],
      b4: json['b4'],
      mustReuired: json['mustReuired'],
      selectRequired: json['selectRequired'],
      select: json['select'],
      d: json['d'],
    );
  }

  Map<String, dynamic> toMap() => {
    'a1': a1,
    'a2': a2,
    'b1': b1,
    'b2': b2,
    'b3': b3,
    'b4': b4,
    'mustReuired': mustReuired,
    'selectRequired': selectRequired,
    'select': select,
    'd': d,
  };
}
