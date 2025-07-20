import 'package:cosmic_explorer/core/services/api/api.dart';
import 'package:cosmic_explorer/core/services/api/api_impl.dart';
import 'package:cosmic_explorer/core/services/database/database.dart';
import 'package:cosmic_explorer/features/planets/di/planets_di.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> dependenciesInjectionsSetup() async {
  getIt.registerSingleton(Database());

  getIt.registerFactory<Api>(
    () => ApiImpl(baseUrl: 'https://api.le-systeme-solaire.net/'),
  );

  await planetsDI();
}
