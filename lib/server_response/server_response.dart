import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'server_response.g.dart';

@JsonSerializable()
class ServerResponse {
  @JsonKey(name: 'text')
  String? triviaText;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'found')
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  ServerResponse({this.triviaText, this.number, this.found, this.type});

  factory ServerResponse.fromJson(Map<String, dynamic> json) {
    return _$ServerResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServerResponseToJson(this);
}
