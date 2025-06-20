// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlanetsStore on PlanetsStoreBase, Store {
  late final _$planetsAtom = Atom(
    name: 'PlanetsStoreBase.planets',
    context: context,
  );

  @override
  ObservableFuture<List<PlanetsEntity>> get planets {
    _$planetsAtom.reportRead();
    return super.planets;
  }

  @override
  set planets(ObservableFuture<List<PlanetsEntity>> value) {
    _$planetsAtom.reportWrite(value, super.planets, () {
      super.planets = value;
    });
  }

  late final _$selectedPlanetAtom = Atom(
    name: 'PlanetsStoreBase.selectedPlanet',
    context: context,
  );

  @override
  PlanetsEntity? get selectedPlanet {
    _$selectedPlanetAtom.reportRead();
    return super.selectedPlanet;
  }

  @override
  set selectedPlanet(PlanetsEntity? value) {
    _$selectedPlanetAtom.reportWrite(value, super.selectedPlanet, () {
      super.selectedPlanet = value;
    });
  }

  late final _$fetchPlanetsAsyncAction = AsyncAction(
    'PlanetsStoreBase.fetchPlanets',
    context: context,
  );

  @override
  Future<dynamic> fetchPlanets() {
    return _$fetchPlanetsAsyncAction.run(() => super.fetchPlanets());
  }

  late final _$PlanetsStoreBaseActionController = ActionController(
    name: 'PlanetsStoreBase',
    context: context,
  );

  @override
  void selectPlanet(PlanetsEntity planet) {
    final _$actionInfo = _$PlanetsStoreBaseActionController.startAction(
      name: 'PlanetsStoreBase.selectPlanet',
    );
    try {
      return super.selectPlanet(planet);
    } finally {
      _$PlanetsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
planets: ${planets},
selectedPlanet: ${selectedPlanet}
    ''';
  }
}
