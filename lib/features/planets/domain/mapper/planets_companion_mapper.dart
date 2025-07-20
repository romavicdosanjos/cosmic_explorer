import 'package:cosmic_explorer/core/services/database/database.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/helpers/mapper.dart';
import 'package:drift/drift.dart';

class PlanetsCompanionMapper
    implements Mapper<PlanetsEntity, PlanetsCompanion> {
  @override
  PlanetsCompanion map(PlanetsEntity? data) {
    return PlanetsCompanion(
      id: Value(data?.id ?? ''),
      englishName: Value(data?.englishName),
      density: Value(data?.density),
      gravity: Value(data?.gravity),
      discoveredBy: Value(data?.discoveredBy),
      discoveryDate: Value(data?.discoveryDate),
      image: Value(data?.image),
    );
  }
}
