import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:restsample/server_response/server_response.dart';

Future<ServerResponse> getNumberFromServer({required String number}) async {
  final _responce =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  //final _bodyAsjson =jsonEncode(_responce.body);
  final _bodyAsJson = jsonDecode(_responce.body) as Map<String, dynamic>;
  final _data = ServerResponse.fromJson(_bodyAsJson);
  return _data;
}
