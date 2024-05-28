class RegisterModel {
  String cpf;
  String date;
  String email;
  String name;
  String phone;
  String zip;
  String nickname;
  String password;
  String confirmPassword;

  RegisterModel(
    this.cpf,
    this.date,
    this.email,
    this.name,
    this.phone,
    this.zip,
    this.nickname,
    this.password,
    this.confirmPassword,
  );

  Map<String, String> toMap() {
    return {
      'uuid': cpf,
      'date': date,
      'email': email,
      'name': name,
      'phone': phone,
      'zip': zip,
      'nickname': nickname,
      'password': password,
      'confirmPassword': confirmPassword
    };
  }
}
