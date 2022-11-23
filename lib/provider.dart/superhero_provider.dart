import 'package:flutter/foundation.dart';
import 'package:super_hero_app/models/superhero.dart';
import 'package:super_hero_app/services/superhero_services.dart';

class SuperheroProvider extends ChangeNotifier {
  SuperHeroService _superHeroService = SuperHeroService();

  List<SuperHero> _superHeros = [];

  List<SuperHero> get superHeros => _superHeros;
  bool isLoading = false;

  Future<void> getAllSuperHeros() async {
    isLoading = true;
    notifyListeners();

    final response = await _superHeroService.getAllSuperHeros();

    _superHeros = response;

    isLoading = false;
    notifyListeners();
  }
}
