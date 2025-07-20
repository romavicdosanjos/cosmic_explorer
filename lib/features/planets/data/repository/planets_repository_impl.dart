import 'package:cosmic_explorer/core/services/database/database.dart';
import 'package:cosmic_explorer/features/planets/data/data_source/planets_data_source.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/features/planets/domain/mapper/planets_companion_mapper.dart';
import 'package:cosmic_explorer/features/planets/domain/mapper/planets_mapper.dart';
import 'package:cosmic_explorer/features/planets/domain/mapper/planets_rows_mapper.dart';
import 'package:cosmic_explorer/features/planets/domain/repository/planets_repository.dart';

class PlanetsRepositoryImpl implements PlanetsRepository {
  final PlanetsDataSource planetsDataSource;
  final Database database;

  PlanetsRepositoryImpl({
    required this.planetsDataSource,
    required this.database,
  });

  final List<String> planetsList = [
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
    final dataSource = await planetsDataSource.getPlanets();
    final mappedPlanets = PlanetsMapper().map(dataSource);

    for (final planet in mappedPlanets) {
      final hasEnglishName = planet.englishName != null;
      final hasPlanet = planetsList.contains(planet.englishName);

      if (hasPlanet && hasEnglishName) {
        planet.image =
            'assets/planets/${planet.englishName?.toLowerCase()}.jpg';
      }

      final companion = PlanetsCompanionMapper().map(planet);
      await database.into(database.planets).insertOnConflictUpdate(companion);
    }

    final planetRows = await database.select(database.planets).get();

    if (planetRows.isEmpty) {
      return [];
    }

    return PlanetsRowsMapper().map(planetRows);
  }
}
