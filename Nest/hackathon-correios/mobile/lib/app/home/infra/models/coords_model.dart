class CoordsModel{
  String lat;
  String long;

  CoordsModel(this.lat, this.long);

  Map<String, String>toMap(){
    return {
      'lat': lat,
      'long': long
    };
  }
}