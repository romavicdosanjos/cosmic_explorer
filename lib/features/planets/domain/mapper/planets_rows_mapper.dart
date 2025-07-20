import 'package:cosmic_explorer/core/services/database/database.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/helpers/mapper.dart';

class PlanetsRowsMapper implements Mapper<List<Planet>, List<PlanetsEntity>> {
  @override
  List<PlanetsEntity> map(List<Planet>? data) {
    if (data == null) {
      return [];
    }

    return data.map((planet) {
      return PlanetsEntity(
        id: planet.id,
        englishName: planet.englishName,
        density: planet.density,
        gravity: planet.gravity,
        discoveredBy: planet.discoveredBy,
        discoveryDate: planet.discoveryDate,
        image: planet.image,
      );
    }).toList();
  }
}
