// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BookingDetailsStruct extends FFFirebaseStruct {
  BookingDetailsStruct({
    String? pickupLocation,
    String? dropoffLocation,
    String? callTime,
    String? unitType,
    String? unitCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pickupLocation = pickupLocation,
        _dropoffLocation = dropoffLocation,
        _callTime = callTime,
        _unitType = unitType,
        _unitCount = unitCount,
        super(firestoreUtilData);

  // "pickupLocation" field.
  String? _pickupLocation;
  String get pickupLocation => _pickupLocation ?? '';
  set pickupLocation(String? val) => _pickupLocation = val;
  bool hasPickupLocation() => _pickupLocation != null;

  // "dropoffLocation" field.
  String? _dropoffLocation;
  String get dropoffLocation => _dropoffLocation ?? '';
  set dropoffLocation(String? val) => _dropoffLocation = val;
  bool hasDropoffLocation() => _dropoffLocation != null;

  // "callTime" field.
  String? _callTime;
  String get callTime => _callTime ?? '';
  set callTime(String? val) => _callTime = val;
  bool hasCallTime() => _callTime != null;

  // "unitType" field.
  String? _unitType;
  String get unitType => _unitType ?? '';
  set unitType(String? val) => _unitType = val;
  bool hasUnitType() => _unitType != null;

  // "unitCount" field.
  String? _unitCount;
  String get unitCount => _unitCount ?? '';
  set unitCount(String? val) => _unitCount = val;
  bool hasUnitCount() => _unitCount != null;

  static BookingDetailsStruct fromMap(Map<String, dynamic> data) =>
      BookingDetailsStruct(
        pickupLocation: data['pickupLocation'] as String?,
        dropoffLocation: data['dropoffLocation'] as String?,
        callTime: data['callTime'] as String?,
        unitType: data['unitType'] as String?,
        unitCount: data['unitCount'] as String?,
      );

  static BookingDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? BookingDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pickupLocation': _pickupLocation,
        'dropoffLocation': _dropoffLocation,
        'callTime': _callTime,
        'unitType': _unitType,
        'unitCount': _unitCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pickupLocation': serializeParam(
          _pickupLocation,
          ParamType.String,
        ),
        'dropoffLocation': serializeParam(
          _dropoffLocation,
          ParamType.String,
        ),
        'callTime': serializeParam(
          _callTime,
          ParamType.String,
        ),
        'unitType': serializeParam(
          _unitType,
          ParamType.String,
        ),
        'unitCount': serializeParam(
          _unitCount,
          ParamType.String,
        ),
      }.withoutNulls;

  static BookingDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookingDetailsStruct(
        pickupLocation: deserializeParam(
          data['pickupLocation'],
          ParamType.String,
          false,
        ),
        dropoffLocation: deserializeParam(
          data['dropoffLocation'],
          ParamType.String,
          false,
        ),
        callTime: deserializeParam(
          data['callTime'],
          ParamType.String,
          false,
        ),
        unitType: deserializeParam(
          data['unitType'],
          ParamType.String,
          false,
        ),
        unitCount: deserializeParam(
          data['unitCount'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BookingDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingDetailsStruct &&
        pickupLocation == other.pickupLocation &&
        dropoffLocation == other.dropoffLocation &&
        callTime == other.callTime &&
        unitType == other.unitType &&
        unitCount == other.unitCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([pickupLocation, dropoffLocation, callTime, unitType, unitCount]);
}

BookingDetailsStruct createBookingDetailsStruct({
  String? pickupLocation,
  String? dropoffLocation,
  String? callTime,
  String? unitType,
  String? unitCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BookingDetailsStruct(
      pickupLocation: pickupLocation,
      dropoffLocation: dropoffLocation,
      callTime: callTime,
      unitType: unitType,
      unitCount: unitCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BookingDetailsStruct? updateBookingDetailsStruct(
  BookingDetailsStruct? bookingDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    bookingDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBookingDetailsStructData(
  Map<String, dynamic> firestoreData,
  BookingDetailsStruct? bookingDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (bookingDetails == null) {
    return;
  }
  if (bookingDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && bookingDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final bookingDetailsData =
      getBookingDetailsFirestoreData(bookingDetails, forFieldValue);
  final nestedData =
      bookingDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = bookingDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBookingDetailsFirestoreData(
  BookingDetailsStruct? bookingDetails, [
  bool forFieldValue = false,
]) {
  if (bookingDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(bookingDetails.toMap());

  // Add any Firestore field values
  bookingDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBookingDetailsListFirestoreData(
  List<BookingDetailsStruct>? bookingDetailss,
) =>
    bookingDetailss
        ?.map((e) => getBookingDetailsFirestoreData(e, true))
        .toList() ??
    [];
