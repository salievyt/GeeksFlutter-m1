import 'archer.dart';
import 'boss.dart';
import 'healer.dart';
import 'hero.dart';
import 'magic.dart';
import 'warrier.dart';

Boss boss = Boss(health: 100, attack: 10);

Healer healer = Healer(health: 2, attack: 10);
Magic magic = Magic(health: 2, attack: 10);
List<Hero> heros = [
  Archer(health: 5, attack: 20),
  Warrier(health: 7, attack: 40),
];
void main(List<String> args) {
  bool isround = true;
  while (isround) {
    round();
    if (heros.every((hero) => hero.health <= 0)) {
      print("Boss win!");
      break;
    } else if (boss.health <= 0) {
      print("Heros win!");
      break;
    }
  }
}

int roundCount = 1;

void round() {
  print("----- ${roundCount} Раунд -----");
  for (var hero in heros) {
    if (magic.health > 0) {
      boss.health -= hero.attack+magic.attack;
      print("Босс был ранен на ${hero.attack} ХП, здоровье босса ${boss.health-magic.attack} ХП");
      print("Буст урона от Мага на ${magic.attack} ХП, общий урон ${hero.attack + magic.attack} ХП");

    }else{
      boss.health -= hero.attack;
      print("Босс был ранен на ${hero.attack} ХП, здоровье босса ${boss.health-magic.attack} ХП");
    }
    if (boss.health <= 0) {
      boss.health = 0;
      return;
    }
    hero.health -= boss.attack;
    magic.health -= (boss.attack / heros.length).round();
    print("Маг был ранен на ${(boss.attack / heros.length).round()} ХП");
    if (magic.health <= 0) {
      magic.health = 0;
      print("Здоровье мага ${magic.health} ХП");
    }
    if (hero.health <= 0) {
      hero.health = 0;
      print("Босс ударил гороя на ${boss.attack} ХП, здаровье героя ${hero.health} ХП");
      continue;
    }
    if (healer.health >= 0 && hero.health > 0) {
      if (magic.health > 0){
        magic.health += healer.attack;
        print("Лекарь выличил мага на ${healer.attack} ХП, здаровье мага ${magic.health} ХП");

      }
      hero.health += healer.attack;
      print("Лекарь выличил героя на ${healer.attack} ХП, здаровье героя ${hero.health} ХП");
    }
  }
  if (healer.health <= 0) {
    healer.health = 0;
  }else if (healer.health > 0) {
    healer.health -= (boss.attack / heros.length).round();
    if (healer.health <= 0) {
    healer.health = 0;
    }
    print("Лекарь был ранен на ${(boss.attack / heros.length).round()} ХП, здоровье лекаря ${healer.health} ХП");
  }
  roundCount ++;

  print("Итоги раунда:");
  print("Босс здоровье: ${boss.health} ХП");
  print("Здаровье лекаря: ${healer.health} ХП");
  print("Здаровье мага: ${magic.health} ХП");
  print("Здаровье героев:");
  for (var hero in heros) {
    print("  ${hero.runtimeType}: ${hero.health} ХП");
  }
}
