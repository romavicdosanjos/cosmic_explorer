class PlanetsResponse {
  List<Bodies>? bodies;

  PlanetsResponse({this.bodies});

  PlanetsResponse.fromJson(Map<String, dynamic> json) {
    if (json['bodies'] != null) {
      bodies = <Bodies>[];
      json['bodies'].forEach((v) {
        bodies!.add(Bodies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bodies != null) {
      data['bodies'] = bodies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bodies {
  String? id;
  String? name;
  String? englishName;
  bool? isPlanet;
  List<Moons>? moons;
  int? semimajorAxis;
  int? perihelion;
  int? aphelion;
  double? eccentricity;
  double? inclination;
  Mass? mass;
  Vol? vol;
  double? density;
  double? gravity;
  double? escape;
  double? meanRadius;
  double? equaRadius;
  double? polarRadius;
  double? flattening;
  String? dimension;
  double? sideralOrbit;
  double? sideralRotation;
  double? aroundPlanet;
  String? discoveredBy;
  String? discoveryDate;
  String? alternativeName;
  double? axialTilt;
  int? avgTemp;
  double? mainAnomaly;
  double? argPeriapsis;
  double? longAscNode;
  String? bodyType;
  String? rel;

  Bodies({
    this.id,
    this.name,
    this.englishName,
    this.isPlanet,
    this.moons,
    this.semimajorAxis,
    this.perihelion,
    this.aphelion,
    this.eccentricity,
    this.inclination,
    this.mass,
    this.vol,
    this.density,
    this.gravity,
    this.escape,
    this.meanRadius,
    this.equaRadius,
    this.polarRadius,
    this.flattening,
    this.dimension,
    this.sideralOrbit,
    this.sideralRotation,
    this.aroundPlanet,
    this.discoveredBy,
    this.discoveryDate,
    this.alternativeName,
    this.axialTilt,
    this.avgTemp,
    this.mainAnomaly,
    this.argPeriapsis,
    this.longAscNode,
    this.bodyType,
    this.rel,
  });

  Bodies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    englishName = json['englishName'];
    isPlanet = json['isPlanet'];
    if (json['moons'] != null) {
      moons = <Moons>[];
      json['moons'].forEach((v) {
        moons!.add(Moons.fromJson(v));
      });
    }
    semimajorAxis = json['semimajorAxis'];
    perihelion = json['perihelion'];
    aphelion = json['aphelion'];
    eccentricity = json['eccentricity'];
    inclination = json['inclination'];
    mass = json['mass'] != null ? Mass.fromJson(json['mass']) : null;
    vol = json['vol'] != null ? Vol.fromJson(json['vol']) : null;
    density = json['density'];
    gravity = json['gravity'];
    escape = json['escape'];
    meanRadius = json['meanRadius'];
    equaRadius = json['equaRadius'];
    polarRadius = json['polarRadius'];
    flattening = json['flattening'];
    dimension = json['dimension'];
    sideralOrbit = json['sideralOrbit'];
    sideralRotation = json['sideralRotation'];
    aroundPlanet = json['aroundPlanet'];
    discoveredBy = json['discoveredBy'];
    discoveryDate = json['discoveryDate'];
    alternativeName = json['alternativeName'];
    axialTilt = json['axialTilt'];
    avgTemp = json['avgTemp'];
    mainAnomaly = json['mainAnomaly'];
    argPeriapsis = json['argPeriapsis'];
    longAscNode = json['longAscNode'];
    bodyType = json['bodyType'];
    rel = json['rel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['englishName'] = englishName;
    data['isPlanet'] = isPlanet;
    if (moons != null) {
      data['moons'] = moons!.map((v) => v.toJson()).toList();
    }
    data['semimajorAxis'] = semimajorAxis;
    data['perihelion'] = perihelion;
    data['aphelion'] = aphelion;
    data['eccentricity'] = eccentricity;
    data['inclination'] = inclination;
    if (mass != null) {
      data['mass'] = mass!.toJson();
    }
    if (vol != null) {
      data['vol'] = vol!.toJson();
    }
    data['density'] = density;
    data['gravity'] = gravity;
    data['escape'] = escape;
    data['meanRadius'] = meanRadius;
    data['equaRadius'] = equaRadius;
    data['polarRadius'] = polarRadius;
    data['flattening'] = flattening;
    data['dimension'] = dimension;
    data['sideralOrbit'] = sideralOrbit;
    data['sideralRotation'] = sideralRotation;
    data['aroundPlanet'] = aroundPlanet;
    data['discoveredBy'] = discoveredBy;
    data['discoveryDate'] = discoveryDate;
    data['alternativeName'] = alternativeName;
    data['axialTilt'] = axialTilt;
    data['avgTemp'] = avgTemp;
    data['mainAnomaly'] = mainAnomaly;
    data['argPeriapsis'] = argPeriapsis;
    data['longAscNode'] = longAscNode;
    data['bodyType'] = bodyType;
    data['rel'] = rel;
    return data;
  }
}

class Moons {
  String? moon;
  String? rel;

  Moons({this.moon, this.rel});

  Moons.fromJson(Map<String, dynamic> json) {
    moon = json['moon'];
    rel = json['rel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['moon'] = moon;
    data['rel'] = rel;
    return data;
  }
}

class Mass {
  double? massValue;
  int? massExponent;

  Mass({this.massValue, this.massExponent});

  Mass.fromJson(Map<String, dynamic> json) {
    massValue = json['massValue'];
    massExponent = json['massExponent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['massValue'] = massValue;
    data['massExponent'] = massExponent;
    return data;
  }
}

class Vol {
  double? volValue;
  int? volExponent;

  Vol({this.volValue, this.volExponent});

  Vol.fromJson(Map<String, dynamic> json) {
    volValue = json['volValue'];
    volExponent = json['volExponent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['volValue'] = volValue;
    data['volExponent'] = volExponent;
    return data;
  }
}
