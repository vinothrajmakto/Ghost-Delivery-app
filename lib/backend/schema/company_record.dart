import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyRecord extends FirestoreRecord {
  CompanyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  bool hasAddress1() => _address1 != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  bool hasAddress2() => _address2 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "registration_certificate" field.
  String? _registrationCertificate;
  String get registrationCertificate => _registrationCertificate ?? '';
  bool hasRegistrationCertificate() => _registrationCertificate != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "company_firstname" field.
  String? _companyFirstname;
  String get companyFirstname => _companyFirstname ?? '';
  bool hasCompanyFirstname() => _companyFirstname != null;

  // "company_lastname" field.
  String? _companyLastname;
  String get companyLastname => _companyLastname ?? '';
  bool hasCompanyLastname() => _companyLastname != null;

  // "dateofjoining" field.
  DateTime? _dateofjoining;
  DateTime? get dateofjoining => _dateofjoining;
  bool hasDateofjoining() => _dateofjoining != null;

  // "business_registration_number" field.
  String? _businessRegistrationNumber;
  String get businessRegistrationNumber => _businessRegistrationNumber ?? '';
  bool hasBusinessRegistrationNumber() => _businessRegistrationNumber != null;

  // "owner_identity_number" field.
  String? _ownerIdentityNumber;
  String get ownerIdentityNumber => _ownerIdentityNumber ?? '';
  bool hasOwnerIdentityNumber() => _ownerIdentityNumber != null;

  // "owner_identity_document" field.
  String? _ownerIdentityDocument;
  String get ownerIdentityDocument => _ownerIdentityDocument ?? '';
  bool hasOwnerIdentityDocument() => _ownerIdentityDocument != null;

  // "companydetails" field.
  DocumentReference? _companydetails;
  DocumentReference? get companydetails => _companydetails;
  bool hasCompanydetails() => _companydetails != null;

  void _initializeFields() {
    _address1 = snapshotData['address1'] as String?;
    _address2 = snapshotData['address2'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _registrationCertificate =
        snapshotData['registration_certificate'] as String?;
    _uid = snapshotData['uid'] as String?;
    _companyFirstname = snapshotData['company_firstname'] as String?;
    _companyLastname = snapshotData['company_lastname'] as String?;
    _dateofjoining = snapshotData['dateofjoining'] as DateTime?;
    _businessRegistrationNumber =
        snapshotData['business_registration_number'] as String?;
    _ownerIdentityNumber = snapshotData['owner_identity_number'] as String?;
    _ownerIdentityDocument = snapshotData['owner_identity_document'] as String?;
    _companydetails = snapshotData['companydetails'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyRecord.fromSnapshot(s));

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyRecord.fromSnapshot(s));

  static CompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyRecordData({
  String? address1,
  String? address2,
  String? city,
  String? country,
  String? companyName,
  String? registrationCertificate,
  String? uid,
  String? companyFirstname,
  String? companyLastname,
  DateTime? dateofjoining,
  String? businessRegistrationNumber,
  String? ownerIdentityNumber,
  String? ownerIdentityDocument,
  DocumentReference? companydetails,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address1': address1,
      'address2': address2,
      'city': city,
      'country': country,
      'company_name': companyName,
      'registration_certificate': registrationCertificate,
      'uid': uid,
      'company_firstname': companyFirstname,
      'company_lastname': companyLastname,
      'dateofjoining': dateofjoining,
      'business_registration_number': businessRegistrationNumber,
      'owner_identity_number': ownerIdentityNumber,
      'owner_identity_document': ownerIdentityDocument,
      'companydetails': companydetails,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyRecordDocumentEquality implements Equality<CompanyRecord> {
  const CompanyRecordDocumentEquality();

  @override
  bool equals(CompanyRecord? e1, CompanyRecord? e2) {
    return e1?.address1 == e2?.address1 &&
        e1?.address2 == e2?.address2 &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.companyName == e2?.companyName &&
        e1?.registrationCertificate == e2?.registrationCertificate &&
        e1?.uid == e2?.uid &&
        e1?.companyFirstname == e2?.companyFirstname &&
        e1?.companyLastname == e2?.companyLastname &&
        e1?.dateofjoining == e2?.dateofjoining &&
        e1?.businessRegistrationNumber == e2?.businessRegistrationNumber &&
        e1?.ownerIdentityNumber == e2?.ownerIdentityNumber &&
        e1?.ownerIdentityDocument == e2?.ownerIdentityDocument &&
        e1?.companydetails == e2?.companydetails;
  }

  @override
  int hash(CompanyRecord? e) => const ListEquality().hash([
        e?.address1,
        e?.address2,
        e?.city,
        e?.country,
        e?.companyName,
        e?.registrationCertificate,
        e?.uid,
        e?.companyFirstname,
        e?.companyLastname,
        e?.dateofjoining,
        e?.businessRegistrationNumber,
        e?.ownerIdentityNumber,
        e?.ownerIdentityDocument,
        e?.companydetails
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyRecord;
}
