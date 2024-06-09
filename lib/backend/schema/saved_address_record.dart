import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SavedAddressRecord extends FirestoreRecord {
  SavedAddressRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "locationId" field.
  String? _locationId;
  String get locationId => _locationId ?? '';
  bool hasLocationId() => _locationId != null;

  // "coordinatorId" field.
  DocumentReference? _coordinatorId;
  DocumentReference? get coordinatorId => _coordinatorId;
  bool hasCoordinatorId() => _coordinatorId != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "latLng" field.
  LatLng? _latLng;
  LatLng? get latLng => _latLng;
  bool hasLatLng() => _latLng != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _locationId = snapshotData['locationId'] as String?;
    _coordinatorId = snapshotData['coordinatorId'] as DocumentReference?;
    _address = snapshotData['address'] as String?;
    _latLng = snapshotData['latLng'] as LatLng?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('savedAddress');

  static Stream<SavedAddressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SavedAddressRecord.fromSnapshot(s));

  static Future<SavedAddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SavedAddressRecord.fromSnapshot(s));

  static SavedAddressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SavedAddressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SavedAddressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SavedAddressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SavedAddressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SavedAddressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSavedAddressRecordData({
  String? locationId,
  DocumentReference? coordinatorId,
  String? address,
  LatLng? latLng,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'locationId': locationId,
      'coordinatorId': coordinatorId,
      'address': address,
      'latLng': latLng,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class SavedAddressRecordDocumentEquality
    implements Equality<SavedAddressRecord> {
  const SavedAddressRecordDocumentEquality();

  @override
  bool equals(SavedAddressRecord? e1, SavedAddressRecord? e2) {
    return e1?.locationId == e2?.locationId &&
        e1?.coordinatorId == e2?.coordinatorId &&
        e1?.address == e2?.address &&
        e1?.latLng == e2?.latLng &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(SavedAddressRecord? e) => const ListEquality()
      .hash([e?.locationId, e?.coordinatorId, e?.address, e?.latLng, e?.notes]);

  @override
  bool isValidKey(Object? o) => o is SavedAddressRecord;
}
