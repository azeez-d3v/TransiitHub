import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RequestsRecord extends FirestoreRecord {
  RequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "requestId" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  bool hasRequestId() => _requestId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "custId" field.
  DocumentReference? _custId;
  DocumentReference? get custId => _custId;
  bool hasCustId() => _custId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "requestDetails" field.
  BookingDetailsStruct? _requestDetails;
  BookingDetailsStruct get requestDetails =>
      _requestDetails ?? BookingDetailsStruct();
  bool hasRequestDetails() => _requestDetails != null;

  void _initializeFields() {
    _requestId = snapshotData['requestId'] as String?;
    _status = snapshotData['status'] as String?;
    _custId = snapshotData['custId'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _requestDetails =
        BookingDetailsStruct.maybeFromMap(snapshotData['requestDetails']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestsRecord.fromSnapshot(s));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestsRecord.fromSnapshot(s));

  static RequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestsRecordData({
  String? requestId,
  String? status,
  DocumentReference? custId,
  DateTime? createdAt,
  BookingDetailsStruct? requestDetails,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'requestId': requestId,
      'status': status,
      'custId': custId,
      'createdAt': createdAt,
      'requestDetails': BookingDetailsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "requestDetails" field.
  addBookingDetailsStructData(firestoreData, requestDetails, 'requestDetails');

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    return e1?.requestId == e2?.requestId &&
        e1?.status == e2?.status &&
        e1?.custId == e2?.custId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.requestDetails == e2?.requestDetails;
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality().hash(
      [e?.requestId, e?.status, e?.custId, e?.createdAt, e?.requestDetails]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
