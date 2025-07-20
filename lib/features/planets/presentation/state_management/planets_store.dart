import 'dart:async';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/features/planets/domain/use_cases/planets_use_case.dart';
import 'package:mobx/mobx.dart';

part 'planets_store.g.dart';

class PlanetsStore = PlanetsStoreBase with _$PlanetsStore;

abstract class PlanetsStoreBase with Store {
  final PlanetsUseCase planetsUseCase;

  PlanetsStoreBase({required this.planetsUseCase});

  @observable
  ObservableFuture<List<PlanetsEntity>> planets = ObservableFuture.value([]);

  @observable
  PlanetsEntity? selectedPlanet;

  @action
  Future fetchPlanets() async {
    planets = ObservableFuture(
      planetsUseCase.getPlanets().then((planetsList) {
        if (planetsList.isNotEmpty && selectedPlanet == null) {
          selectedPlanet = planetsList.firstWhere(
            (planet) => planet.englishName == 'Earth',
            orElse: () => planetsList.first,
          );
        }
        return planetsList;
      }),
    );
  }

  @action
  void selectPlanet(PlanetsEntity planet) {
    selectedPlanet = planet;
  }
}
