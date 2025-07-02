import 'package:cosmic_explorer/core/services/database/database.dart';
import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:drift/drift.dart';

class PlanetsCompanionHelper {
  static PlanetsCompanion fromEntity(PlanetsEntity entity) {
    return PlanetsCompanion(
      id: Value(entity.id ?? ''),
      englishName: Value(entity.englishName),
      density: Value(entity.density),
      gravity: Value(entity.gravity),
      discoveredBy: Value(entity.discoveredBy),
      discoveryDate: Value(entity.discoveryDate),
    );
  }

  PlanetsEntity fromTable(Planet row) {
    return PlanetsEntity(
      id: row.id,
      englishName: row.englishName,
      density: row.density,
      gravity: row.gravity,
      discoveredBy: row.discoveredBy,
      discoveryDate: row.discoveryDate,
      image: row.image,
    );
  }
}
