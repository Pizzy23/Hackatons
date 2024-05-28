class CepModel{
  String cep;
  String adress;

  CepModel(this.cep, this.adress);

  Map<String, String>toMap(){
    return {
      'cep': cep,
      'adress': adress
    };
  }
}