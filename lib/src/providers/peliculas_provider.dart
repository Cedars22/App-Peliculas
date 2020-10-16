import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculasProvider {
  String _apikey = 'e0ad99874f983d3e65371a4d88f50bc7';
  String _url = 'api.themoviedb.org';
  String _language = 'es-MX';

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'laguage': _language,
    });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    print(peliculas.items[1]);

    return peliculas.items;
  }
}
