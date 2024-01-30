class SchoolInfoModel {
  final int id;
  final String totalCount;
  final String schoolName;
  final String schoolGubun;
  final String schoolType;
  final String estType;
  final String region;
  final String adres;
  final String link;
  SchoolInfoModel({
    required this.id,
    required this.totalCount,
    required this.schoolName,
    required this.schoolGubun,
    required this.schoolType,
    required this.estType,
    required this.region,
    required this.adres,
    required this.link,
  });

  factory SchoolInfoModel.fromJson(Map<String, dynamic> json) {
    return SchoolInfoModel(
      id: json['id'] ?? 0,
      totalCount: json['totalCount'] ?? '',
      schoolName: json['schoolName'] ?? '',
      schoolGubun: json['schoolGubun'] ?? '',
      schoolType: json['schoolType'] ?? '',
      estType: json['estType'] ?? '',
      region: json['region'] ?? '',
      adres: json['adres'] ?? '',
      link: json['link'] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'totalCount': totalCount,
      'schoolName': schoolName,
      'schoolGubun': schoolGubun,
      'schoolType': schoolType,
      'estType': estType,
      'region': region,
      'adres': adres,
      'link': link,
    };
  }
}
