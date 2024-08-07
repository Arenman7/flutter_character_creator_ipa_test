import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
  //constructor
  Character({
    required this.vocation,
    required this.name,
    required this.slogan,
    required this.id,
  });

  //fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  //getters
  bool get isFav => _isFav;

  //methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

//dummy char data
List<Character> characters = [
  Character(
      vocation: Vocation.agent,
      name: "Elara Dusk",
      slogan: "Shadows are my allies.",
      id: '1'),
  Character(
      vocation: Vocation.droid, name: "ZX-7", slogan: "Beep boop!", id: '2'),
  Character(
      vocation: Vocation.trooper,
      name: "Kael Tor",
      slogan: "The Empire will prevail.",
      id: '3'),
];
