// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Location)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location))! as Location);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'countryCode',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(String)),
      'regionName',
      serializers.serialize(object.regionName,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(String)),
      'isp',
      serializers.serialize(object.isp, specifiedType: const FullType(String)),
      'org',
      serializers.serialize(object.org, specifiedType: const FullType(String)),
      'as',
      serializers.serialize(object.as, specifiedType: const FullType(String)),
      'query',
      serializers.serialize(object.query,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regionName':
          result.regionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isp':
          result.isp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'org':
          result.org = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'as':
          result.as = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final Location? location;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.location}) : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState && location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(0, location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')..add('location', location))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ?? new _$AppState._(location: _location?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final String status;
  @override
  final String country;
  @override
  final String countryCode;
  @override
  final String region;
  @override
  final String regionName;
  @override
  final String city;
  @override
  final String zip;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  final String isp;
  @override
  final String org;
  @override
  final String as;
  @override
  final String query;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {required this.status,
      required this.country,
      required this.countryCode,
      required this.region,
      required this.regionName,
      required this.city,
      required this.zip,
      required this.lat,
      required this.lon,
      required this.timezone,
      required this.isp,
      required this.org,
      required this.as,
      required this.query})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'Location', 'status');
    BuiltValueNullFieldError.checkNotNull(country, 'Location', 'country');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'Location', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(region, 'Location', 'region');
    BuiltValueNullFieldError.checkNotNull(regionName, 'Location', 'regionName');
    BuiltValueNullFieldError.checkNotNull(city, 'Location', 'city');
    BuiltValueNullFieldError.checkNotNull(zip, 'Location', 'zip');
    BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon');
    BuiltValueNullFieldError.checkNotNull(timezone, 'Location', 'timezone');
    BuiltValueNullFieldError.checkNotNull(isp, 'Location', 'isp');
    BuiltValueNullFieldError.checkNotNull(org, 'Location', 'org');
    BuiltValueNullFieldError.checkNotNull(as, 'Location', 'as');
    BuiltValueNullFieldError.checkNotNull(query, 'Location', 'query');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        status == other.status &&
        country == other.country &&
        countryCode == other.countryCode &&
        region == other.region &&
        regionName == other.regionName &&
        city == other.city &&
        zip == other.zip &&
        lat == other.lat &&
        lon == other.lon &&
        timezone == other.timezone &&
        isp == other.isp &&
        org == other.org &&
        as == other.as &&
        query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, status.hashCode),
                                                        country.hashCode),
                                                    countryCode.hashCode),
                                                region.hashCode),
                                            regionName.hashCode),
                                        city.hashCode),
                                    zip.hashCode),
                                lat.hashCode),
                            lon.hashCode),
                        timezone.hashCode),
                    isp.hashCode),
                org.hashCode),
            as.hashCode),
        query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('status', status)
          ..add('country', country)
          ..add('countryCode', countryCode)
          ..add('region', region)
          ..add('regionName', regionName)
          ..add('city', city)
          ..add('zip', zip)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('timezone', timezone)
          ..add('isp', isp)
          ..add('org', org)
          ..add('as', as)
          ..add('query', query))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _isp;
  String? get isp => _$this._isp;
  set isp(String? isp) => _$this._isp = isp;

  String? _org;
  String? get org => _$this._org;
  set org(String? org) => _$this._org = org;

  String? _as;
  String? get as => _$this._as;
  set as(String? as) => _$this._as = as;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _country = $v.country;
      _countryCode = $v.countryCode;
      _region = $v.region;
      _regionName = $v.regionName;
      _city = $v.city;
      _zip = $v.zip;
      _lat = $v.lat;
      _lon = $v.lon;
      _timezone = $v.timezone;
      _isp = $v.isp;
      _org = $v.org;
      _as = $v.as;
      _query = $v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'Location', 'status'),
            country: BuiltValueNullFieldError.checkNotNull(
                country, 'Location', 'country'),
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, 'Location', 'countryCode'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, 'Location', 'region'),
            regionName: BuiltValueNullFieldError.checkNotNull(
                regionName, 'Location', 'regionName'),
            city:
                BuiltValueNullFieldError.checkNotNull(city, 'Location', 'city'),
            zip: BuiltValueNullFieldError.checkNotNull(zip, 'Location', 'zip'),
            lat: BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon'),
            timezone: BuiltValueNullFieldError.checkNotNull(
                timezone, 'Location', 'timezone'),
            isp: BuiltValueNullFieldError.checkNotNull(isp, 'Location', 'isp'),
            org: BuiltValueNullFieldError.checkNotNull(org, 'Location', 'org'),
            as: BuiltValueNullFieldError.checkNotNull(as, 'Location', 'as'),
            query: BuiltValueNullFieldError.checkNotNull(
                query, 'Location', 'query'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
