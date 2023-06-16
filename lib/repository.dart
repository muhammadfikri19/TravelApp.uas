import 'dart:convert';
import 'package:travelapp/models.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl = 'https://648b2bf217f1536d65ea87cc.mockapi.io/trending';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Trending> trending = it.map((e) => Trending.fromJson(e)).toList();
        return trending;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
