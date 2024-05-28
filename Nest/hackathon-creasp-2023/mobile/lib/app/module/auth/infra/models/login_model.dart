class LoginModel{
  String cpf;
  String creasp;
  String password;

  LoginModel(this.cpf, this.creasp, this.password);

  Map<String, String>toMap(){
    return {
      'cpf': cpf,
      'creasp': creasp,
      'password': password
    };
  }
}