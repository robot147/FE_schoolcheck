class UserModel {
  final String? id;
  final String? password;
  final String? accessToken;
  final String? refreshToken;

  UserModel({
    this.id,
    this.password,
    this.accessToken,
    this.refreshToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      password: json['password'].toString(),
      accessToken: json['accessToken'].toString(),
      refreshToken: json['refreshToken'].toString(),
    );
  }
}
