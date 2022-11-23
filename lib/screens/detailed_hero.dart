import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_hero_app/models/superhero.dart';

class DetailedHero extends StatelessWidget {
  final SuperHero hero;
  const DetailedHero({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(hero.name!)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.network(
                      hero.images!.lg!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    hero.name!,
                    style: GoogleFonts.alike(
                      color: Color.fromARGB(255, 20, 34, 46),
                      textStyle: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  Text(
                    hero.slug!,
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ExpandableNotifier(
                    child: ScrollOnExpand(
                      child: Expandable(
                        collapsed: ExpandableButton(
                          child: customTile(
                            kChild: ListTile(
                              leading: const Icon(Icons.keyboard_arrow_right),
                              title: Text(
                                "Powerstats",
                                style: GoogleFonts.roboto(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        expanded: customTile(
                          kChild: ExpandableButton(
                            child: Column(
                              children: [
                                customTile(
                                  kChild: ListTile(
                                    leading:
                                        const Icon(Icons.keyboard_arrow_down),
                                    title: Text(
                                      "Powers",
                                      style: GoogleFonts.roboto(fontSize: 18),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Intelligence",
                                  value: "${hero.powerstats!.intelligence} %",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Strength",
                                  value: "${hero.powerstats!.strength} %",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Speed",
                                  value: "${hero.powerstats!.speed} %",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Durability",
                                  value: "${hero.powerstats!.durability} %",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Power",
                                  value: "${hero.powerstats!.power} %",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Combat",
                                  value: "${hero.powerstats!.combat} %",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ExpandableNotifier(
                    child: ScrollOnExpand(
                      child: Expandable(
                        collapsed: ExpandableButton(
                          child: customTile(
                            kChild: ListTile(
                              leading: const Icon(Icons.keyboard_arrow_right),
                              title: Text(
                                "Appearance",
                                style: GoogleFonts.roboto(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        expanded: customTile(
                          kChild: ExpandableButton(
                            child: Column(
                              children: [
                                customTile(
                                  kChild: ListTile(
                                    leading:
                                        const Icon(Icons.keyboard_arrow_down),
                                    title: Text(
                                      "Appearance",
                                      style: GoogleFonts.roboto(fontSize: 18),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Gender",
                                  value: "${hero.appearance!.gender}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Race",
                                  value: "${hero.appearance!.race}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Height",
                                  value: "${hero.appearance!.height}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Weight",
                                  value: "${hero.appearance!.weight}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Eye Color",
                                  value: "${hero.appearance!.eyeColor} ",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Hair Color",
                                  value: "${hero.appearance!.hairColor}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ExpandableNotifier(
                    child: ScrollOnExpand(
                      child: Expandable(
                        collapsed: ExpandableButton(
                          child: customTile(
                            kChild: ListTile(
                              leading: const Icon(Icons.keyboard_arrow_right),
                              title: Text(
                                "Biography",
                                style: GoogleFonts.roboto(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        expanded: customTile(
                          kChild: ExpandableButton(
                            child: Column(
                              children: [
                                customTile(
                                  kChild: ListTile(
                                    leading:
                                        const Icon(Icons.keyboard_arrow_down),
                                    title: Text(
                                      "Biography",
                                      style: GoogleFonts.roboto(fontSize: 18),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Full Name",
                                  value: "${hero.biography!.fullName}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Alter Egos",
                                  value: "${hero.biography!.alterEgos}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Place of Birth",
                                  value: "${hero.biography!.placeOfBirth}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "First Appearance",
                                  value: "${hero.biography!.firstAppearance}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Publisher",
                                  value: "${hero.biography!.publisher} ",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Alignment",
                                  value: "${hero.biography!.alignment} ",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ExpandableNotifier(
                    child: ScrollOnExpand(
                      child: Expandable(
                        collapsed: ExpandableButton(
                          child: customTile(
                            kChild: ListTile(
                              leading: const Icon(Icons.keyboard_arrow_right),
                              title: Text(
                                "Work",
                                style: GoogleFonts.roboto(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        expanded: customTile(
                          kChild: ExpandableButton(
                            child: Column(
                              children: [
                                customTile(
                                  kChild: ListTile(
                                    leading:
                                        const Icon(Icons.keyboard_arrow_down),
                                    title: Text(
                                      "Work",
                                      style: GoogleFonts.roboto(fontSize: 18),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Occupation",
                                  value: "${hero.work!.occupation}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                customRow(
                                  title: "Base",
                                  value: "${hero.work!.base}",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class customRow extends StatelessWidget {
  final String title;
  final String value;
  customRow({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: GoogleFonts.poppins(fontSize: 16),
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: GoogleFonts.poppins(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class customTile extends StatelessWidget {
  Widget kChild;
  customTile({
    required this.kChild,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        elevation: 8.0,
        child: kChild,
      ),
    );
  }
}
