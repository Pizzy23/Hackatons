import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:mobile/app/module/auth/infra/interfaces/interface_request.dart';
import 'package:mobile/app/module/auth/infra/models/register_model.dart';

class RegisterService implements IRequest<RegisterModel>{

  // String baseUrl = dotenv.env['BASE_URL'] ?? "";
  // late Uri url = Uri.parse('$baseUrl/register');

  final Uri url = Uri.parse("http://18.223.182.93:3000/register");

  Logger log = Logger();

  @override
  Future delete({required RegisterModel headers}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get({required RegisterModel headers}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Response> post({required RegisterModel headers}) async{
    Response response;
    dynamic convertJson;

    try {
      response = await http.post(url, body: headers.toMap());
      convertJson = jsonDecode(response.body);
      if(response.statusCode == 201){
        Modular.to.navigate('home');
      }
    } catch (err){
      throw http.ClientException("Error HTTP: $err");
    } finally {
      log.i(convertJson);
    }
    return response;
  }

  @override
  Future update({required RegisterModel headers}) {
    // TODO: implement update
    throw UnimplementedError();
  }
  
}