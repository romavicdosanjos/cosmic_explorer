import 'package:cosmic_explorer/features/planets/data/dto/response/planets_response.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/helpers/mapper.dart';

class PlanetsMapper implements Mapper<PlanetsResponse, List<PlanetsEntity>?> {
  @override
  List<PlanetsEntity>? map(PlanetsResponse? data) {
    return data?.bodies?.map((planet) {
      return PlanetsEntity(
        id: planet.id,
        englishName: planet.englishName,
        density: planet.density,
        gravity: planet.gravity,
        discoveredBy: planet.discoveredBy,
      );
    }).toList();
  }
}
