class SuperHero {
  int? id;
  String? name;
  String? slug;
  Powerstats? powerstats;
  Appearance? appearance;
  Biography? biography;
  Work? work;
  Connections? connections;
  Images? images;

  SuperHero(
      {required this.id,
      required this.name,
      required this.slug,
      required this.powerstats,
      required this.appearance,
      required this.biography,
      required this.work,
      required this.connections,
      required this.images});

  SuperHero.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    powerstats = Powerstats.fromJson(json['powerstats']);
    appearance = Appearance.fromJson(json['appearance']);
    biography = Biography.fromJson(json['biography']);
    work = Work.fromJson(json['work']);
    connections = Connections.fromJson(json['connections']);
    images = Images.fromJson(json['images']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    if (this.powerstats != null) {
      data['powerstats'] = this.powerstats!.toJson();
    }
    if (this.appearance != null) {
      data['appearance'] = this.appearance!.toJson();
    }
    if (this.biography != null) {
      data['biography'] = this.biography!.toJson();
    }
    if (this.work != null) {
      data['work'] = this.work!.toJson();
    }
    if (this.connections != null) {
      data['connections'] = this.connections!.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    return data;
  }
}

class Powerstats {
  int? intelligence;
  int? strength;
  int? speed;
  int? durability;
  int? power;
  int? combat;

  Powerstats(
      {required this.intelligence,
      required this.strength,
      required this.speed,
      required this.durability,
      required this.power,
      required this.combat});

  Powerstats.fromJson(Map<String, dynamic> json) {
    intelligence = json['intelligence'];
    strength = json['strength'];
    speed = json['speed'];
    durability = json['durability'];
    power = json['power'];
    combat = json['combat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['intelligence'] = this.intelligence;
    data['strength'] = this.strength;
    data['speed'] = this.speed;
    data['durability'] = this.durability;
    data['power'] = this.power;
    data['combat'] = this.combat;
    return data;
  }
}

class Appearance {
  String? gender;
  String? race;
  List<String>? height;
  List<String>? weight;
  String? eyeColor;
  String? hairColor;

  Appearance(
      {required this.gender,
      required this.race,
      required this.height,
      required this.weight,
      required this.eyeColor,
      required this.hairColor});

  Appearance.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    race = json['race'];
    height = json['height'].cast<String>();
    weight = json['weight'].cast<String>();
    eyeColor = json['eyeColor'];
    hairColor = json['hairColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    data['race'] = this.race;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['eyeColor'] = this.eyeColor;
    data['hairColor'] = this.hairColor;
    return data;
  }
}

class Biography {
  String? fullName;
  String? alterEgos;
  List<String>? aliases;
  String? placeOfBirth;
  String? firstAppearance;
  String? publisher;
  String? alignment;

  Biography(
      {required this.fullName,
      required this.alterEgos,
      required this.aliases,
      required this.placeOfBirth,
      required this.firstAppearance,
      required this.publisher,
      required this.alignment});

  Biography.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    alterEgos = json['alterEgos'];
    aliases = json['aliases'].cast<String>();
    placeOfBirth = json['placeOfBirth'];
    firstAppearance = json['firstAppearance'];
    publisher = json['publisher'];
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['alterEgos'] = this.alterEgos;
    data['aliases'] = this.aliases;
    data['placeOfBirth'] = this.placeOfBirth;
    data['firstAppearance'] = this.firstAppearance;
    data['publisher'] = this.publisher;
    data['alignment'] = this.alignment;
    return data;
  }
}

class Work {
  late String? occupation;
  late String? base;

  Work({required this.occupation, required this.base});

  Work.fromJson(Map<String, dynamic> json) {
    occupation = json['occupation'];
    base = json['base'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['occupation'] = this.occupation;
    data['base'] = this.base;
    return data;
  }
}

class Connections {
  String? groupAffiliation;
  String? relatives;

  Connections({required this.groupAffiliation, required this.relatives});

  Connections.fromJson(Map<String, dynamic> json) {
    groupAffiliation = json['groupAffiliation'];
    relatives = json['relatives'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupAffiliation'] = this.groupAffiliation;
    data['relatives'] = this.relatives;
    return data;
  }
}

class Images {
  String? xs;
  String? sm;
  String? md;
  String? lg;

  Images(
      {required this.xs, required this.sm, required this.md, required this.lg});

  Images.fromJson(Map<String, dynamic> json) {
    xs = json['xs'];
    sm = json['sm'];
    md = json['md'];
    lg = json['lg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['xs'] = this.xs;
    data['sm'] = this.sm;
    data['md'] = this.md;
    data['lg'] = this.lg;
    return data;
  }
}
