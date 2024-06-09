import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class JobOrdersRecord extends FirestoreRecord {
  JobOrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "jobOrderId" field.
  String? _jobOrderId;
  String get jobOrderId => _jobOrderId ?? '';
  bool hasJobOrderId() => _jobOrderId != null;

  // "coordinatorId" field.
  DocumentReference? _coordinatorId;
  DocumentReference? get coordinatorId => _coordinatorId;
  bool hasCoordinatorId() => _coordinatorId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "assignedTo" field.
  List<DocumentReference>? _assignedTo;
  List<DocumentReference> get assignedTo => _assignedTo ?? const [];
  bool hasAssignedTo() => _assignedTo != null;

  // "createAt" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "Request" field.
  DocumentReference? _request;
  DocumentReference? get request => _request;
  bool hasRequest() => _request != null;

  void _initializeFields() {
    _jobOrderId = snapshotData['jobOrderId'] as String?;
    _coordinatorId = snapshotData['coordinatorId'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _assignedTo = getDataList(snapshotData['assignedTo']);
    _createAt = snapshotData['createAt'] as DateTime?;
    _request = snapshotData['Request'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('JobOrders');

  static Stream<JobOrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobOrdersRecord.fromSnapshot(s));

  static Future<JobOrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobOrdersRecord.fromSnapshot(s));

  static JobOrdersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobOrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobOrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobOrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobOrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobOrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobOrdersRecordData({
  String? jobOrderId,
  DocumentReference? coordinatorId,
  String? status,
  DateTime? createAt,
  DocumentReference? request,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobOrderId': jobOrderId,
      'coordinatorId': coordinatorId,
      'status': status,
      'createAt': createAt,
      'Request': request,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobOrdersRecordDocumentEquality implements Equality<JobOrdersRecord> {
  const JobOrdersRecordDocumentEquality();

  @override
  bool equals(JobOrdersRecord? e1, JobOrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.jobOrderId == e2?.jobOrderId &&
        e1?.coordinatorId == e2?.coordinatorId &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.assignedTo, e2?.assignedTo) &&
        e1?.createAt == e2?.createAt &&
        e1?.request == e2?.request;
  }

  @override
  int hash(JobOrdersRecord? e) => const ListEquality().hash([
        e?.jobOrderId,
        e?.coordinatorId,
        e?.status,
        e?.assignedTo,
        e?.createAt,
        e?.request
      ]);

  @override
  bool isValidKey(Object? o) => o is JobOrdersRecord;
}
