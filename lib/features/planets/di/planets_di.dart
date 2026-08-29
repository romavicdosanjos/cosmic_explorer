import 'package:cosmic_explorer/di/dependency_injections.dart';
import 'package:cosmic_explorer/features/planets/data/data_source/planets_data_source.dart';
import 'package:cosmic_explorer/features/planets/data/data_source/planets_data_source_impl.dart';
import 'package:cosmic_explorer/features/planets/data/repository/planets_repository_impl.dart';
import 'package:cosmic_explorer/features/planets/domain/repository/planets_repository.dart';
import 'package:cosmic_explorer/features/planets/domain/use_cases/planets_use_case.dart';
import 'package:cosmic_explorer/features/planets/domain/use_cases/planets_use_case_impl.dart';
import 'package:cosmic_explorer/features/planets/presentation/state_management/planets_store.dart';

Future<void> planetsDI() async {
  getIt.registerFactory<PlanetsDataSource>(
    () => PlanetsDataSourceImpl(api: getIt.get()),
  );

  getIt.registerFactory<PlanetsRepository>(
    () => PlanetsRepositoryImpl(
      planetsDataSource: getIt.get(),
      database: getIt.get(),
    ),
  );

  getIt.registerFactory<PlanetsUseCase>(
    () => PlanetsUseCaseImpl(planetsRepository: getIt.get()),
  );

  getIt.registerLazySingleton(() => PlanetsStore(planetsUseCase: getIt.get()));
}
