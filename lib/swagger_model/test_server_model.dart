class TestServerModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  TestServerModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory TestServerModel.fromJson(Map<String, dynamic> json) {
    return TestServerModel(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
