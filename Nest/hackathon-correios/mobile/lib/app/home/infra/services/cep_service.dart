import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:mobile/app/home/infra/interfaces/interface_request.dart';
import 'package:mobile/app/home/infra/models/cep_model.dart';
import 'package:http/http.dart' as http;

class CepService implements IRequest<CepModel>{

  String baseUrl = dotenv.env['BASE_URL'] ?? "";
  late Uri url = Uri.parse('$baseUrl/cep');

  Logger log = Logger();

  @override
  Future<Response> post({required CepModel headers}) async{
    Response response;
    dynamic convertJson;

    try {
      response = await http.post(url, headers: headers.toMap());
      convertJson = jsonDecode(response.body);
    } catch (err) {
      throw http.ClientException("Error HTTP: $err");
    } finally {
      log.i(convertJson);
    }
    return response;
  }

  @override
  Future delete({required CepModel headers}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get({required CepModel headers}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future update({required CepModel headers}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}