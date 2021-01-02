import 'package:first_assignment/src/model/hero.dart';
import 'package:first_assignment/src/utils/constraints.dart';

class Helper {
  static List<HeroModel> getAllHeroes() {
    return heroes;
  }

  static HeroModel getHeroById(int id) {
    return heroes.firstWhere((item) => item.id == id);
  }

  // ignore: missing_return
  static bool createHero(HeroModel hero) {
    heroes.add(hero);
  }

  // ignore: missing_return
  static bool updateHero(HeroModel hero) {
    //heroes.firstWhere((item) => item.id==id);
    int index = heroes.indexWhere((item) => item.id == hero.id);
    heroes[index] = hero;
  }

  static List<HeroModel> searchHero(String key) {
    return heroes
        .where((item) => item.name.toLowerCase().contains(key.toLowerCase()))
        .toList();
  }

  static bool deleteHero(int id) {
    int index = heroes.indexWhere((item) => item.id == id);
    return heroes.remove(index);
  }

  // ignore: missing_return
  static HeroModel duplicateHero(HeroModel hero) {
    heroes.add(hero);
    heroes.add(hero);
  }
}
