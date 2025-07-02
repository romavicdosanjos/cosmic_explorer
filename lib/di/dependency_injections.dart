import 'package:cosmic_explorer/core/services/database/database.dart';
import 'package:cosmic_explorer/features/planets/di/planets_di.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> dependenciesInjectionsSetup() async {
  getIt.registerSingleton(Database());

  await planetsDI();
}
