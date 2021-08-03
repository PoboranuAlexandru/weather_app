part of models;

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder b) updates]) = _$Location;

  factory Location.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Location._();

  String get status;

  String get country;

  String get countryCode;

  String get region;

  String get regionName;

  String get city;

  String get zip;

  double get lat;

  double get lon;

  String get timezone;

  String get isp;

  String get org;

  String get as;

  String get query;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Location> get serializer => _$locationSerializer;
}
