//character build/class

enum Vocation {
  jedi(
      title: "Jedi Guardian",
      description:
          "A defender of peace and justice, skilled in lightsaber combat and the Force.",
      weapon: "Lightsaber",
      ability: "Force Powers",
      image: "jedi.jpg"),
  inquisitor(
      title: "Sith Inquisitor",
      description:
          "A dark-side adept who uses Force magic and deception to achieve power.",
      weapon: "Lightsaber",
      ability: "Force Sorcery",
      image: "inquisitor.jpg"),
  agent(
      title: "Imperial Operative",
      description:
          "A skilled spy and assassin, trained in stealth and deception to serve the Empire.",
      weapon: "Blaster Pistol",
      ability: "Shadow Arts",
      image: "agent.jpg"),
  hunter(
      title: "Bounty Hunter",
      description:
          "A mercenary specializing in tracking and capturing targets for reward.",
      weapon: "Variety of Weapons",
      ability: "Combat Expertise",
      image: "hunter.jpg"),
  smuggler(
      title: "Corellian Smuggler",
      description:
          "A daring pilot and trader navigating the galaxy's underworld.",
      weapon: "Blaster Pistol",
      ability: "Piloting and Negotiation",
      image: "smuggler.jpg"),
  trooper(
      title: "Stormtrooper",
      description:
          "A disciplined soldier of the Galactic Empire, trained in combat and obedience.",
      weapon: "Blaster Rifle",
      ability: "Tactical Combat",
      image: "trooper.jpg"),
  rebel(
      title: "Rebel Trooper",
      description:
          "A freedom fighter dedicated to overthrowing the Galactic Empire.",
      weapon: "Blaster Rifle",
      ability: "Guerrilla Warfare",
      image: "rebel.jpg"),
  droid(
      title: "Astromech Droid",
      description:
          "A versatile droid companion, providing technical support and assistance.",
      weapon: "None",
      ability: "Technical Expertise",
      image: "droid.jpg"),
  ;

  const Vocation({
    required this.title,
    required this.description,
    required this.weapon,
    required this.ability,
    required this.image,
  });

  final String title;
  final String description;
  final String weapon;
  final String ability;
  final String image;
}
