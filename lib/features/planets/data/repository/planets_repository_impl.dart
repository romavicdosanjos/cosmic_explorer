import 'package:cosmic_explorer/features/planets/data/data_source/planets_data_source.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/features/planets/domain/mapper/planets_mapper.dart';
import 'package:cosmic_explorer/features/planets/domain/repository/planets_repository.dart';

class PlanetsRepositoryImpl implements PlanetsRepository {
  final PlanetsDataSource planetsDataSource;

  PlanetsRepositoryImpl({required this.planetsDataSource});

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
    var dataSource = await planetsDataSource.getPlanets();
    var mappedPlanets = PlanetsMapper().map(dataSource) ?? [];

    for (var planet in mappedPlanets) {
      bool hasEnglishName = planet.englishName != null;
      bool hasPlanet = planetsList.contains(planet.englishName);

      if (hasPlanet && hasEnglishName) {
        planet.image =
            'assets/planets/${planet.englishName?.toLowerCase()}.jpg';
      }
    }
    return mappedPlanets;
  }
}
