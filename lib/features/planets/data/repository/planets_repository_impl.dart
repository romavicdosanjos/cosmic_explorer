import 'package:cosmic_explorer/core/services/database/database.dart';
import 'package:cosmic_explorer/features/planets/data/data_source/planets_data_source.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_companion_helper.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/features/planets/domain/mapper/planets_mapper.dart';
import 'package:cosmic_explorer/features/planets/domain/repository/planets_repository.dart';

class PlanetsRepositoryImpl implements PlanetsRepository {
  final PlanetsDataSource planetsDataSource;
  final Database database;

  PlanetsRepositoryImpl({
    required this.planetsDataSource,
    required this.database,
  });

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
  Future<List<PlanetsEntity>> planets() async {
    final planetRows = await database.select(database.planets).get();

    final planetEntities = planetRows.map((row) {
      return PlanetsCompanionHelper().fromTable(row);
    }).toList();

    return planetEntities;
  }

  @override
  Future<void> fetchPlanetsAndAddOnDatabase() async {
    var dataSource = await planetsDataSource.getPlanets();
    var mappedPlanets = PlanetsMapper().map(dataSource) ?? [];

    for (var planet in mappedPlanets) {
      bool hasEnglishName = planet.englishName != null;
      bool hasPlanet = planetsList.contains(planet.englishName);

      if (hasPlanet && hasEnglishName) {
        planet.image =
            'assets/planets/${planet.englishName?.toLowerCase()}.jpg';
      }

      final companion = PlanetsCompanionHelper.fromEntity(planet);
      await database.into(database.planets).insertOnConflictUpdate(companion);
    }
  }
}
