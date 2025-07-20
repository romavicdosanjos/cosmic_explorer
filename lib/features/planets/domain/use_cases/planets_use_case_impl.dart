import 'package:cosmic_explorer/features/planets/domain/entity/planets_entity.dart';
import 'package:cosmic_explorer/features/planets/domain/repository/planets_repository.dart';
import 'package:cosmic_explorer/features/planets/domain/use_cases/planets_use_case.dart';

class PlanetsUseCaseImpl implements PlanetsUseCase {
  final PlanetsRepository planetsRepository;

  PlanetsUseCaseImpl({required this.planetsRepository});

  @override
  Future<List<PlanetsEntity>> getPlanets() {
    return planetsRepository.planets();
  }
}
