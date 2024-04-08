class User {
  final int id;
  final String? firstname;
  final String? lastname;
  final String? mobile;
  final String? birthday;
  final String? gender;
  final String? visibleGender;

  User({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.mobile,
    required this.birthday,
    required this.gender,
    required this.visibleGender,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        firstname: json['firstname'],
        lastname: json['lastname'],
        mobile: json['mobile'],
        birthday: json['birthday'],
        gender: json['gender'],
        visibleGender: json['visibleGender'],
      );
}
