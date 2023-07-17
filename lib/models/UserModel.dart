class UserModel {
  UserModel({
    this.firstname,
    this.lastname,
    this.email,
    this.no_hp,
    this.password,
    this.role,
    this.verified_email,
    this.verified_nohp,
  });

  String? firstname;
  String? lastname;
  String? email;
  String? no_hp;
  String? password;
  String? role;
  String? verified_email;
  String? verified_nohp;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstname: json['firstname'],
        lastname: json['lastname'],
        email: json['email'],
        no_hp: json['no_hp'],
        password: json['password'],
        role: json['role'],
        verified_email: json['verified_email'],
        verified_nohp: json['verified_nohp'],
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "no_hp": no_hp,
        "password": password,
        "role": role,
        "verified_email": verified_email,
        "verified_nohp": verified_nohp,
      };
}
