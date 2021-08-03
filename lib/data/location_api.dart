import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/models/index.dart';

class LocationApi {
  const LocationApi({required Client client}) : _client = client;

  final Client _client;

  Future<Location> getLocation() async {
    final Uri uri = Uri.parse('http://ip-api.com/json/?fields=61439');
    final Response response = await _client.get(uri);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    return Location.fromJson(jsonDecode(response.body));
  }
}
