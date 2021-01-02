import 'package:first_assignment/src/utils/constraints.dart';
import 'package:flutter/material.dart';

class HeroModel {

  int id;
  String name;
  int health = 0;
  int charisma = 0;
  int stamina = 0;
  Origin origin;
  String image;

  HeroModel({
    @required this.id,
    @required this.name,
    @required this.health,
    @required this.charisma,
    @required this.stamina,
    @required this.origin,
    @required this.image,

  });
}
