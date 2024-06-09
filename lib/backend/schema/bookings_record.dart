import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bookingId" field.
  String? _bookingId;
  String get bookingId => _bookingId ?? '';
  bool hasBookingId() => _bookingId != null;

  // "operatorId" field.
  DocumentReference? _operatorId;
  DocumentReference? get operatorId => _operatorId;
  bool hasOperatorId() => _operatorId != null;

  // "vehicleId" field.
  DocumentReference? _vehicleId;
  DocumentReference? get vehicleId => _vehicleId;
  bool hasVehicleId() => _vehicleId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "qrCodeClaimed" field.
  bool? _qrCodeClaimed;
  bool get qrCodeClaimed => _qrCodeClaimed ?? false;
  bool hasQrCodeClaimed() => _qrCodeClaimed != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _bookingId = snapshotData['bookingId'] as String?;
    _operatorId = snapshotData['operatorId'] as DocumentReference?;
    _vehicleId = snapshotData['vehicleId'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _qrCodeClaimed = snapshotData['qrCodeClaimed'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? bookingId,
  DocumentReference? operatorId,
  DocumentReference? vehicleId,
  String? status,
  DateTime? startDate,
  DateTime? endDate,
  bool? qrCodeClaimed,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bookingId': bookingId,
      'operatorId': operatorId,
      'vehicleId': vehicleId,
      'status': status,
      'startDate': startDate,
      'endDate': endDate,
      'qrCodeClaimed': qrCodeClaimed,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.bookingId == e2?.bookingId &&
        e1?.operatorId == e2?.operatorId &&
        e1?.vehicleId == e2?.vehicleId &&
        e1?.status == e2?.status &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.qrCodeClaimed == e2?.qrCodeClaimed &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.bookingId,
        e?.operatorId,
        e?.vehicleId,
        e?.status,
        e?.startDate,
        e?.endDate,
        e?.qrCodeClaimed,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
