class SchoolInfoModel {
  final String totalCount;
  final String schoolName;
  final String schoolGubun;
  final String schoolType;
  final String estType;
  final String region;
  final String link;
  SchoolInfoModel({
    required this.totalCount,
    required this.schoolName,
    required this.schoolGubun,
    required this.schoolType,
    required this.estType,
    required this.region,
    required this.link,
  });

  factory SchoolInfoModel.fromJson(Map<String, dynamic> json) {
    return SchoolInfoModel(
      totalCount: json['totalCount'] ?? '',
      schoolName: json['schoolName'] ?? '',
      schoolGubun: json['schoolGubun'] ?? '',
      schoolType: json['schoolType'] ?? '',
      estType: json['estType'] ?? '',
      region: json['region'] ?? '',
      link: json['link'] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'schoolName': schoolName,
      'schoolGubun': schoolGubun,
      'schoolType': schoolType,
      'estType': estType,
      'region': region,
      'link': link,
    };
  }
}
