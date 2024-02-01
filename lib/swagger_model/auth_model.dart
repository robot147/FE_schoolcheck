class AuthModel {
  final String? accessToken;
  final String? refreshToken;
  final String? responsString;

  AuthModel({
    this.accessToken,
    this.refreshToken,
    this.responsString,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      accessToken: json['accessToken'].toString(),
      refreshToken: json['refreshToken'].toString(),
      responsString: json['responsString'].toString(),
    );
  }
}
