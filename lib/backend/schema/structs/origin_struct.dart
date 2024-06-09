// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OriginStruct extends FFFirebaseStruct {
  OriginStruct({
    String? id,
    String? formattedAddress,
    String? zipcode,
    double? latitude,
    double? longitude,
    String? city,
    String? country,
    String? countryCode,
    String? suburb,
    String? state,
    String? placeName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _formattedAddress = formattedAddress,
        _zipcode = zipcode,
        _latitude = latitude,
        _longitude = longitude,
        _city = city,
        _country = country,
        _countryCode = countryCode,
        _suburb = suburb,
        _state = state,
        _placeName = placeName,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "formatted_address" field.
  String? _formattedAddress;
  String get formattedAddress => _formattedAddress ?? '';
  set formattedAddress(String? val) => _formattedAddress = val;
  bool hasFormattedAddress() => _formattedAddress != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  set zipcode(String? val) => _zipcode = val;
  bool hasZipcode() => _zipcode != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;
  void incrementLatitude(double amount) => _latitude = latitude + amount;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;
  void incrementLongitude(double amount) => _longitude = longitude + amount;
  bool hasLongitude() => _longitude != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;
  bool hasCountryCode() => _countryCode != null;

  // "suburb" field.
  String? _suburb;
  String get suburb => _suburb ?? '';
  set suburb(String? val) => _suburb = val;
  bool hasSuburb() => _suburb != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "place_name" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  set placeName(String? val) => _placeName = val;
  bool hasPlaceName() => _placeName != null;

  static OriginStruct fromMap(Map<String, dynamic> data) => OriginStruct(
        id: data['id'] as String?,
        formattedAddress: data['formatted_address'] as String?,
        zipcode: data['zipcode'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        city: data['city'] as String?,
        country: data['country'] as String?,
        countryCode: data['country_code'] as String?,
        suburb: data['suburb'] as String?,
        state: data['state'] as String?,
        placeName: data['place_name'] as String?,
      );

  static OriginStruct? maybeFromMap(dynamic data) =>
      data is Map ? OriginStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'formatted_address': _formattedAddress,
        'zipcode': _zipcode,
        'latitude': _latitude,
        'longitude': _longitude,
        'city': _city,
        'country': _country,
        'country_code': _countryCode,
        'suburb': _suburb,
        'state': _state,
        'place_name': _placeName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'formatted_address': serializeParam(
          _formattedAddress,
          ParamType.String,
        ),
        'zipcode': serializeParam(
          _zipcode,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'country_code': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'suburb': serializeParam(
          _suburb,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'place_name': serializeParam(
          _placeName,
          ParamType.String,
        ),
      }.withoutNulls;

  static OriginStruct fromSerializableMap(Map<String, dynamic> data) =>
      OriginStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        formattedAddress: deserializeParam(
          data['formatted_address'],
          ParamType.String,
          false,
        ),
        zipcode: deserializeParam(
          data['zipcode'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['country_code'],
          ParamType.String,
          false,
        ),
        suburb: deserializeParam(
          data['suburb'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        placeName: deserializeParam(
          data['place_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OriginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OriginStruct &&
        id == other.id &&
        formattedAddress == other.formattedAddress &&
        zipcode == other.zipcode &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        city == other.city &&
        country == other.country &&
        countryCode == other.countryCode &&
        suburb == other.suburb &&
        state == other.state &&
        placeName == other.placeName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        formattedAddress,
        zipcode,
        latitude,
        longitude,
        city,
        country,
        countryCode,
        suburb,
        state,
        placeName
      ]);
}

OriginStruct createOriginStruct({
  String? id,
  String? formattedAddress,
  String? zipcode,
  double? latitude,
  double? longitude,
  String? city,
  String? country,
  String? countryCode,
  String? suburb,
  String? state,
  String? placeName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OriginStruct(
      id: id,
      formattedAddress: formattedAddress,
      zipcode: zipcode,
      latitude: latitude,
      longitude: longitude,
      city: city,
      country: country,
      countryCode: countryCode,
      suburb: suburb,
      state: state,
      placeName: placeName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OriginStruct? updateOriginStruct(
  OriginStruct? origin, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    origin
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOriginStructData(
  Map<String, dynamic> firestoreData,
  OriginStruct? origin,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (origin == null) {
    return;
  }
  if (origin.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && origin.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final originData = getOriginFirestoreData(origin, forFieldValue);
  final nestedData = originData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = origin.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOriginFirestoreData(
  OriginStruct? origin, [
  bool forFieldValue = false,
]) {
  if (origin == null) {
    return {};
  }
  final firestoreData = mapToFirestore(origin.toMap());

  // Add any Firestore field values
  origin.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOriginListFirestoreData(
  List<OriginStruct>? origins,
) =>
    origins?.map((e) => getOriginFirestoreData(e, true)).toList() ?? [];
