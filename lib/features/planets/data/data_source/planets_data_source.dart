import 'package:cosmic_explorer/features/planets/data/dto/response/planets_response.dart';

abstract class PlanetsDataSource {
  Future<PlanetsResponse> getPlanets();
}
