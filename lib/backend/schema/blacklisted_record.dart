import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlacklistedRecord extends FirestoreRecord {
  BlacklistedRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blacklisted');

  static Stream<BlacklistedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlacklistedRecord.fromSnapshot(s));

  static Future<BlacklistedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlacklistedRecord.fromSnapshot(s));

  static BlacklistedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BlacklistedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlacklistedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlacklistedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlacklistedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlacklistedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlacklistedRecordData({
  int? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlacklistedRecordDocumentEquality implements Equality<BlacklistedRecord> {
  const BlacklistedRecordDocumentEquality();

  @override
  bool equals(BlacklistedRecord? e1, BlacklistedRecord? e2) {
    return e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(BlacklistedRecord? e) => const ListEquality().hash([e?.phoneNumber]);

  @override
  bool isValidKey(Object? o) => o is BlacklistedRecord;
}
