import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class VehicleCollectionRecord extends FirestoreRecord {
  VehicleCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "licensePlate" field.
  String? _licensePlate;
  String get licensePlate => _licensePlate ?? '';
  bool hasLicensePlate() => _licensePlate != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "driverName" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  bool hasDriverName() => _driverName != null;

  // "driverContact" field.
  String? _driverContact;
  String get driverContact => _driverContact ?? '';
  bool hasDriverContact() => _driverContact != null;

  // "helperName" field.
  String? _helperName;
  String get helperName => _helperName ?? '';
  bool hasHelperName() => _helperName != null;

  // "helperContact" field.
  String? _helperContact;
  String get helperContact => _helperContact ?? '';
  bool hasHelperContact() => _helperContact != null;

  // "vehicleid" field.
  String? _vehicleid;
  String get vehicleid => _vehicleid ?? '';
  bool hasVehicleid() => _vehicleid != null;

  // "operatorId" field.
  DocumentReference? _operatorId;
  DocumentReference? get operatorId => _operatorId;
  bool hasOperatorId() => _operatorId != null;

  void _initializeFields() {
    _licensePlate = snapshotData['licensePlate'] as String?;
    _type = snapshotData['type'] as String?;
    _driverName = snapshotData['driverName'] as String?;
    _driverContact = snapshotData['driverContact'] as String?;
    _helperName = snapshotData['helperName'] as String?;
    _helperContact = snapshotData['helperContact'] as String?;
    _vehicleid = snapshotData['vehicleid'] as String?;
    _operatorId = snapshotData['operatorId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VehicleCollection');

  static Stream<VehicleCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehicleCollectionRecord.fromSnapshot(s));

  static Future<VehicleCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VehicleCollectionRecord.fromSnapshot(s));

  static VehicleCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehicleCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehicleCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehicleCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehicleCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehicleCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehicleCollectionRecordData({
  String? licensePlate,
  String? type,
  String? driverName,
  String? driverContact,
  String? helperName,
  String? helperContact,
  String? vehicleid,
  DocumentReference? operatorId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'licensePlate': licensePlate,
      'type': type,
      'driverName': driverName,
      'driverContact': driverContact,
      'helperName': helperName,
      'helperContact': helperContact,
      'vehicleid': vehicleid,
      'operatorId': operatorId,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehicleCollectionRecordDocumentEquality
    implements Equality<VehicleCollectionRecord> {
  const VehicleCollectionRecordDocumentEquality();

  @override
  bool equals(VehicleCollectionRecord? e1, VehicleCollectionRecord? e2) {
    return e1?.licensePlate == e2?.licensePlate &&
        e1?.type == e2?.type &&
        e1?.driverName == e2?.driverName &&
        e1?.driverContact == e2?.driverContact &&
        e1?.helperName == e2?.helperName &&
        e1?.helperContact == e2?.helperContact &&
        e1?.vehicleid == e2?.vehicleid &&
        e1?.operatorId == e2?.operatorId;
  }

  @override
  int hash(VehicleCollectionRecord? e) => const ListEquality().hash([
        e?.licensePlate,
        e?.type,
        e?.driverName,
        e?.driverContact,
        e?.helperName,
        e?.helperContact,
        e?.vehicleid,
        e?.operatorId
      ]);

  @override
  bool isValidKey(Object? o) => o is VehicleCollectionRecord;
}
