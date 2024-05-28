import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:mobile/app/module/auth/infra/interfaces/interface_request.dart';
import 'package:mobile/app/module/auth/infra/models/login_model.dart';

class LoginService implements IRequest<LoginModel>{

  // String baseUrl = dotenv.env['BASE_URL'] ?? "";
  // late Uri url = Uri.parse('$baseUrl/login');
  final Uri url = Uri.parse("http://18.223.182.93:3000/login");

  Logger log = Logger();

  @override
  Future<Response> update({required LoginModel headers}) async {
    Response response;
    dynamic convertJson;

    try {
      response = await http.put(url, body: headers.toMap());
      convertJson = jsonDecode(response.body);
      if(response.statusCode == 200){
        Modular.to.navigate('home');
      }
    } catch (err) {
      throw http.ClientException("Error HTTP: $err");
    } finally {
      log.i(convertJson);
    }
    return response;
  }

  @override
  Future delete({required LoginModel headers}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get({required LoginModel headers}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future post({required LoginModel headers}) {
    // TODO: implement post
    throw UnimplementedError();
  }
  
}