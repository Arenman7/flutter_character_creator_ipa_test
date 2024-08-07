import 'package:flutter_rpg/models/vocation.dart';

class Skill {
  final String id;
  final String name;
  final String image;
  final Vocation vocation;

  Skill({
    required this.id,
    required this.name,
    required this.image,
    required this.vocation,
  });
}

final List<Skill> allSkills = [
  // Jedi
  Skill(
      id: '1',
      name: "Force Push",
      image: "force_push.jpg",
      vocation: Vocation.jedi),
  Skill(
      id: '2',
      name: "Force Jump",
      image: "force_jump.jpg",
      vocation: Vocation.jedi),
  Skill(
      id: '3',
      name: "Force Heal",
      image: "force_heal.jpg",
      vocation: Vocation.jedi),
  Skill(
      id: '4',
      name: "Force Pull",
      image: "force_pull.jpg",
      vocation: Vocation.jedi),

// Sith Inquisitor
  Skill(
      id: '5',
      name: "Lightning Bolt",
      image: "lightning_bolt.jpg",
      vocation: Vocation.inquisitor),
  Skill(
      id: '6',
      name: "Force Choke",
      image: "force_choke.jpg",
      vocation: Vocation.inquisitor),
  Skill(
      id: '7',
      name: "Dark Heal",
      image: "dark_heal.jpg",
      vocation: Vocation.inquisitor),
  Skill(
      id: '8',
      name: "Force Drain",
      image: "force_drain.jpg",
      vocation: Vocation.inquisitor),

// Imperial Agent
  Skill(
      id: '9',
      name: "Sniper Shot",
      image: "sniper_shot.jpg",
      vocation: Vocation.agent),
  Skill(
      id: '10',
      name: "Cloaking",
      image: "cloaking.jpg",
      vocation: Vocation.agent),
  Skill(
      id: '11',
      name: "Disruptor",
      image: "disruptor.jpg",
      vocation: Vocation.agent),
  Skill(
      id: '12',
      name: "Quick Shot",
      image: "quick_shot.jpg",
      vocation: Vocation.agent),

// Bounty Hunter
  Skill(
      id: '13',
      name: "Rocket Punch",
      image: "rocket_punch.jpg",
      vocation: Vocation.hunter),
  Skill(
      id: '14',
      name: "Tracking Scan",
      image: "tracking_scan.jpg",
      vocation: Vocation.hunter),
  Skill(
      id: '15',
      name: "Grenade Launch",
      image: "grenade_launch.jpg",
      vocation: Vocation.hunter),
  Skill(
      id: '16',
      name: "Flamethrower",
      image: "flamethrower.jpg",
      vocation: Vocation.hunter),

// Smuggler
  Skill(
      id: '17',
      name: "Smuggler Shot",
      image: "smuggler_shot.jpg",
      vocation: Vocation.smuggler),
  Skill(
      id: '18',
      name: "Trick Shot",
      image: "trick_shot.jpg",
      vocation: Vocation.smuggler),
  Skill(
      id: '19',
      name: "Cool Down",
      image: "cool_down.jpg",
      vocation: Vocation.smuggler),
  Skill(
      id: '20',
      name: "Lucky Shot",
      image: "lucky_shot.jpg",
      vocation: Vocation.smuggler),

// Imperial Trooper
  Skill(
      id: '21',
      name: "Suppressive Fire",
      image: "suppressive_fire.jpg",
      vocation: Vocation.trooper),
  Skill(
      id: '22',
      name: "Tactical Scan",
      image: "tactical_scan.jpg",
      vocation: Vocation.trooper),
  Skill(
      id: '23',
      name: "Grenade Volley",
      image: "grenade_volley.jpg",
      vocation: Vocation.trooper),
  Skill(
      id: '24',
      name: "Shield Bash",
      image: "shield_bash.jpg",
      vocation: Vocation.trooper),

// Rebel Soldier
  Skill(
      id: '25',
      name: "Rebel Fire",
      image: "rebel_fire.jpg",
      vocation: Vocation.rebel),
  Skill(
      id: '26',
      name: "Cover Fire",
      image: "cover_fire.jpg",
      vocation: Vocation.rebel),
  Skill(
      id: '27',
      name: "Med Pack",
      image: "med_pack.jpg",
      vocation: Vocation.rebel),
  Skill(
      id: '28',
      name: "Explosive Charge",
      image: "explosive_charge.jpg",
      vocation: Vocation.rebel),

// Astromech Droid
  Skill(
      id: '29',
      name: "Repair Burst",
      image: "repair_burst.jpg",
      vocation: Vocation.droid),
  Skill(
      id: '30',
      name: "Shield Boost",
      image: "shield_boost.jpg",
      vocation: Vocation.droid),
  Skill(
      id: '31',
      name: "Overcharge",
      image: "overcharge.jpg",
      vocation: Vocation.droid),
  Skill(
      id: '32',
      name: "Detonate",
      image: "detonate.jpg",
      vocation: Vocation.droid),
];
