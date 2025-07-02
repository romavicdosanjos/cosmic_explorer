import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';

abstract class PlanetsRepository {
  Future<void> fetchPlanetsAndAddOnDatabase();

  Future<List<PlanetsEntity>> planets();
}
