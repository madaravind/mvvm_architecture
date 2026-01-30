class UserModel {
  final String id;
  final String name;
  final String token;

  UserModel({required this.id, required this.name, required this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      token: json['token'],
    );
  }
}
