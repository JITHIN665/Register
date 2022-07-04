class UserModel {
  int? id;
  final String name;
  final String email;
  final String password;
  final String cpassword;

  UserModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.cpassword,
      this.id});

  static UserModel fromMap(Map<String, Object?> map) {
    final id = map['id'] as int;
    final name = map['name'] as String; //cast in to string
    final email = map['email'] as String;
    final password = map['password'] as String;
    final cpassword = map['cpassword'] as String;

    return UserModel(
        id: id,
        name: name,
        email: email,
        password: password,
        cpassword: cpassword);
  }
}
