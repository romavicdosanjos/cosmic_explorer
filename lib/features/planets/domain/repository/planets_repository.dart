import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';

abstract class PlanetsRepository {
  Future<List<PlanetsEntity>> planets();
}
