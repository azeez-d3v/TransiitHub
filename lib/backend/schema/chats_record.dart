import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "messageId" field.
  String? _messageId;
  String get messageId => _messageId ?? '';
  bool hasMessageId() => _messageId != null;

  // "jobOrderId" field.
  DocumentReference? _jobOrderId;
  DocumentReference? get jobOrderId => _jobOrderId;
  bool hasJobOrderId() => _jobOrderId != null;

  // "senderId" field.
  DocumentReference? _senderId;
  DocumentReference? get senderId => _senderId;
  bool hasSenderId() => _senderId != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "recipientId" field.
  DocumentReference? _recipientId;
  DocumentReference? get recipientId => _recipientId;
  bool hasRecipientId() => _recipientId != null;

  void _initializeFields() {
    _messageId = snapshotData['messageId'] as String?;
    _jobOrderId = snapshotData['jobOrderId'] as DocumentReference?;
    _senderId = snapshotData['senderId'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _recipientId = snapshotData['recipientId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? messageId,
  DocumentReference? jobOrderId,
  DocumentReference? senderId,
  String? message,
  DateTime? timestamp,
  DocumentReference? recipientId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'messageId': messageId,
      'jobOrderId': jobOrderId,
      'senderId': senderId,
      'message': message,
      'timestamp': timestamp,
      'recipientId': recipientId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    return e1?.messageId == e2?.messageId &&
        e1?.jobOrderId == e2?.jobOrderId &&
        e1?.senderId == e2?.senderId &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        e1?.recipientId == e2?.recipientId;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.messageId,
        e?.jobOrderId,
        e?.senderId,
        e?.message,
        e?.timestamp,
        e?.recipientId
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
