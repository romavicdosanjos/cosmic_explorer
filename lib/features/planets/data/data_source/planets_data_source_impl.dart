import 'dart:convert';

import 'package:cosmic_explorer/core/services/api/api.dart';
import 'package:cosmic_explorer/features/planets/data/data_source/planets_data_source.dart';
import 'package:cosmic_explorer/features/planets/data/dto/response/planets_response.dart';

class PlanetsDataSourceImpl implements PlanetsDataSource {
  final Api api;

  PlanetsDataSourceImpl({required this.api});

  @override
  Future<PlanetsResponse> getPlanets() async {
    final response = await api.getEndpoint(
      'rest/bodies?filter[]=isPlanet,eq,true',
      headers: {
        'Authorization':
            'Bearer add here your key generated https://api.le-systeme-solaire.net/generatekey.html',
      },
    );
    return PlanetsResponse.fromJson(jsonDecode(response.body));
  }
}
