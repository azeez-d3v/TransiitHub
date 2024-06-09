import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TrackingRecord extends FirestoreRecord {
  TrackingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "trackingId" field.
  String? _trackingId;
  String get trackingId => _trackingId ?? '';
  bool hasTrackingId() => _trackingId != null;

  // "bookingId" field.
  DocumentReference? _bookingId;
  DocumentReference? get bookingId => _bookingId;
  bool hasBookingId() => _bookingId != null;

  // "currentLocation" field.
  LatLng? _currentLocation;
  LatLng? get currentLocation => _currentLocation;
  bool hasCurrentLocation() => _currentLocation != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _trackingId = snapshotData['trackingId'] as String?;
    _bookingId = snapshotData['bookingId'] as DocumentReference?;
    _currentLocation = snapshotData['currentLocation'] as LatLng?;
    _status = snapshotData['status'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tracking');

  static Stream<TrackingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackingRecord.fromSnapshot(s));

  static Future<TrackingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackingRecord.fromSnapshot(s));

  static TrackingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackingRecordData({
  String? trackingId,
  DocumentReference? bookingId,
  LatLng? currentLocation,
  String? status,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'trackingId': trackingId,
      'bookingId': bookingId,
      'currentLocation': currentLocation,
      'status': status,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackingRecordDocumentEquality implements Equality<TrackingRecord> {
  const TrackingRecordDocumentEquality();

  @override
  bool equals(TrackingRecord? e1, TrackingRecord? e2) {
    return e1?.trackingId == e2?.trackingId &&
        e1?.bookingId == e2?.bookingId &&
        e1?.currentLocation == e2?.currentLocation &&
        e1?.status == e2?.status &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(TrackingRecord? e) => const ListEquality().hash([
        e?.trackingId,
        e?.bookingId,
        e?.currentLocation,
        e?.status,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is TrackingRecord;
}
