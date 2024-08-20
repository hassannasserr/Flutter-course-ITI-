import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Apihelper {
  Future<List<dynamic>> GetFilms() async {
    //https://api.themoviedb.org/3/movie/popular?api_key=eb03df251074313f6e24c705f23a1cdc
    var url = Uri.https('api.themoviedb.org', '/3/movie/popular', {
      'api_key': 'eb03df251074313f6e24c705f23a1cdc'
    });
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return jsonResponse['results'];
    } else {
      return [];
    }
  }
  Future<dynamic> GetFilmDetails(int id) async {
    //https://api.themoviedb.org/3/movie/550?api_key=eb03df251074313f6e24c705f23a1cdc
    var url = Uri.https('api.themoviedb.org', '/3/movie/$id', {
      'api_key': 'eb03df251074313f6e24c705f23a1cdc'
    });
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
     // print(jsonResponse);
      return jsonResponse;
    } else {
      return {};
    }
  }
}