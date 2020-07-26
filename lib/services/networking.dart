import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkingHelper {
  NetworkingHelper({this.urlData});

  final String urlData;

  Future getData() async {
    http.Response response = await http.get(urlData);
    if(response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}