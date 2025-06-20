import 'package:cosmic_explorer/di/dependency_injections.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/features/planets/presentation/state_management/planets_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:yaru/icons.dart';
import 'package:yaru/widgets.dart';

class PlanetsScreen extends StatefulWidget {
  const PlanetsScreen({super.key});

  @override
  State<PlanetsScreen> createState() => _PlanetsScreenState();
}

class _PlanetsScreenState extends State<PlanetsScreen> {
  var store = getIt.get<PlanetsStore>();

  List<String> planetsList = [
    'Uranus',
    'Neptune',
    'Jupiter',
    'Mars',
    'Mercury',
    'Saturn',
    'Earth',
    'Venus',
  ];

  @override
  void initState() {
    store.fetchPlanets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Observer(
          builder: (_) {
            switch (store.planets.status) {
              case FutureStatus.pending:
                return Center(child: YaruCircularProgressIndicator());
              case FutureStatus.rejected:
                return Center(child: Text("Error to load feed"));
              case FutureStatus.fulfilled:
                return SafeArea(
                  child: Stack(
                    children: [
                      FlutterEarthGlobe(
                        controller: FlutterEarthGlobeController(
                          isRotating: true,
                          rotationSpeed: 0.05,
                          isBackgroundFollowingSphereRotation: true,
                          background: Image.asset(
                            'assets/planets/2k_stars.jpg',
                          ).image,
                          surface: Image.asset(
                            store.selectedPlanet?.image ?? "",
                          ).image,
                        ),
                        radius: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: YaruPopupMenuButton<PlanetsEntity>(
                            icon: const Icon(
                              YaruIcons.pan_down,
                              color: Colors.white,
                            ),
                            initialValue: store.selectedPlanet,
                            onSelected: (planet) {
                              store.selectPlanet(planet);
                            },
                            child: Text(
                              store.selectedPlanet?.englishName ??
                                  'Select a planet',
                              style: const TextStyle(color: Colors.white),
                            ),
                            itemBuilder: (context) {
                              return [
                                for (final planet in store.planets.value ?? [])
                                  PopupMenuItem<PlanetsEntity>(
                                    value: planet,
                                    child: Text(
                                      planet.englishName ?? 'Unknown',
                                    ),
                                  ),
                              ];
                            },
                          ),
                        ),
                      ),
                      /*      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            children: [
                              Text(
                                "${store.selectedPlanet?.discoveredBy}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "${store.selectedPlanet?.density}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "${store.selectedPlanet?.gravity}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),*/
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
