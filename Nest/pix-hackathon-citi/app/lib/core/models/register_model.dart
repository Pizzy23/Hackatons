class RegisterModel{
  String name;
  String cpf;
  String email;
  String password;
  String confirmPassword;

  RegisterModel({required this.name, required this.cpf, required this.email, required this.password, required this.confirmPassword});

  Map<String, String>toMap(){
    return {
      'name': name,
      'email': email,
      'cpf': cpf,
      'password': password,
      'confirmPassword': confirmPassword
    };
  }
}