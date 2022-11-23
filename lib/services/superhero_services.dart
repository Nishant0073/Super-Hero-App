import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:super_hero_app/models/superhero.dart';

class SuperHeroService {
  Future<List<SuperHero>> getAllSuperHeros() async {
    try {
      const url =
          "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json";
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final superHeros = json.map((e) => SuperHero.fromJson(e)).toList();
        return superHeros;
      } else
        throw "Something went wrong!";
    } catch (e) {
      print("Error Occured! $e");
    }
    return [];
  }
}
