import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:super_hero_app/provider.dart/superhero_provider.dart';
import 'package:super_hero_app/screens/detailed_hero.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SuperheroProvider>(context, listen: false).getAllSuperHeros();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SUPERHEROS"),
        ),
        body: Consumer<SuperheroProvider>(
          builder: (context, value, child) {
            if (value.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            final superHeros = value.superHeros;
            if (superHeros.length == 0) {
              return Center(
                  child: const Text("Please enable internet and restart app"));
            }

            return ListView.builder(
              itemCount: superHeros.length,
              itemBuilder: ((context, index) {
                final hero = superHeros[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailedHero(hero: hero)),
                      );
                    },
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      elevation: 12.0,
                      child: ListTile(
                        leading: Image.network(hero.images!.sm!),
                        title: Text(hero.name!),
                        subtitle: Text(hero.biography!.publisher!),
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ));
  }
}
