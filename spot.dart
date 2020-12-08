class Spot {
  final num id;
  final String spotName;
  final String spotDescription;
  final String adress;
  final num latitude;
  final num longitude;
  final num townId;
  final String townName;
  final num prefectureId;
  final String prefectureName;

  Spot({
    this.id, 
    this.spotName, 
    this.spotDescription, 
    this.adress, 
    this.latitude, 
    this.longitude, 
    this.townId, 
    this.townName, 
    this.prefectureId, 
    this.prefectureName, 
  });

  factory Spot.fromJson(Map<String, dynamic> json) {
    return Spot(
      id: json['id'],
      spotName: json['spotName'],
      spotDescription: json['spotDescription'],
      adress: json['adress'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      townId: json['townId'],
      townName: json['townName'],
      prefectureId: json['prefectureId'],
      prefectureName: json['prefectureName'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'spotName': spotName,
    'spotDescription': spotDescription,
    'adress': adress,
    'latitude': latitude,
    'longitude': longitude,
    'townId': townId,
    'townName': townName,
    'prefectureId': prefectureId,
    'prefectureName': prefectureName,
  };
}
