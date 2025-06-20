import 'package:cosmic_explorer/features/planets/di/planets_di.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> dependenciesInjectionsSetup() async {
  await planetsDI();
}
