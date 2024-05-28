class HomeModel{
  String art;
  String cat;

  HomeModel(this.art, this.cat);

  Map<String, String>toMap(){
    return {
      'art': art,
      'cat': cat,
    };
  }
}