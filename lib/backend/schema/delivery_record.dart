import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryRecord extends FirestoreRecord {
  DeliveryRecord._(
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

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "id_number" field.
  double? _idNumber;
  double get idNumber => _idNumber ?? 0.0;
  bool hasIdNumber() => _idNumber != null;

  // "license_number" field.
  int? _licenseNumber;
  int get licenseNumber => _licenseNumber ?? 0;
  bool hasLicenseNumber() => _licenseNumber != null;

  // "license_id_proof" field.
  String? _licenseIdProof;
  String get licenseIdProof => _licenseIdProof ?? '';
  bool hasLicenseIdProof() => _licenseIdProof != null;

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  bool hasDob() => _dob != null;

  // "vehicle_number" field.
  String? _vehicleNumber;
  String get vehicleNumber => _vehicleNumber ?? '';
  bool hasVehicleNumber() => _vehicleNumber != null;

  // "uae_id" field.
  String? _uaeId;
  String get uaeId => _uaeId ?? '';
  bool hasUaeId() => _uaeId != null;

  // "id_upload" field.
  String? _idUpload;
  String get idUpload => _idUpload ?? '';
  bool hasIdUpload() => _idUpload != null;

  // "license_upload" field.
  String? _licenseUpload;
  String get licenseUpload => _licenseUpload ?? '';
  bool hasLicenseUpload() => _licenseUpload != null;

  // "vehicle_registration_upload" field.
  String? _vehicleRegistrationUpload;
  String get vehicleRegistrationUpload => _vehicleRegistrationUpload ?? '';
  bool hasVehicleRegistrationUpload() => _vehicleRegistrationUpload != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "pidno" field.
  String? _pidno;
  String get pidno => _pidno ?? '';
  bool hasPidno() => _pidno != null;

  // "pidcertificate" field.
  String? _pidcertificate;
  String get pidcertificate => _pidcertificate ?? '';
  bool hasPidcertificate() => _pidcertificate != null;

  // "plicenceno" field.
  String? _plicenceno;
  String get plicenceno => _plicenceno ?? '';
  bool hasPlicenceno() => _plicenceno != null;

  // "plicence_certi" field.
  String? _plicenceCerti;
  String get plicenceCerti => _plicenceCerti ?? '';
  bool hasPlicenceCerti() => _plicenceCerti != null;

  // "approve_status" field.
  String? _approveStatus;
  String get approveStatus => _approveStatus ?? '';
  bool hasApproveStatus() => _approveStatus != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "company_id" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "company" field.
  DocumentReference? _company;
  DocumentReference? get company => _company;
  bool hasCompany() => _company != null;

  // "driver_id" field.
  String? _driverId;
  String get driverId => _driverId ?? '';
  bool hasDriverId() => _driverId != null;

  void _initializeFields() {
    _address1 = snapshotData['address1'] as String?;
    _address2 = snapshotData['address2'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _idNumber = castToType<double>(snapshotData['id_number']);
    _licenseNumber = castToType<int>(snapshotData['license_number']);
    _licenseIdProof = snapshotData['license_id_proof'] as String?;
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _dob = snapshotData['dob'] as String?;
    _vehicleNumber = snapshotData['vehicle_number'] as String?;
    _uaeId = snapshotData['uae_id'] as String?;
    _idUpload = snapshotData['id_upload'] as String?;
    _licenseUpload = snapshotData['license_upload'] as String?;
    _vehicleRegistrationUpload =
        snapshotData['vehicle_registration_upload'] as String?;
    _uid = snapshotData['uid'] as String?;
    _pidno = snapshotData['pidno'] as String?;
    _pidcertificate = snapshotData['pidcertificate'] as String?;
    _plicenceno = snapshotData['plicenceno'] as String?;
    _plicenceCerti = snapshotData['plicence_certi'] as String?;
    _approveStatus = snapshotData['approve_status'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _companyId = snapshotData['company_id'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _company = snapshotData['company'] as DocumentReference?;
    _driverId = snapshotData['driver_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('delivery');

  static Stream<DeliveryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryRecord.fromSnapshot(s));

  static Future<DeliveryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveryRecord.fromSnapshot(s));

  static DeliveryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveryRecordData({
  String? address1,
  String? address2,
  String? city,
  String? country,
  String? firstName,
  String? lastName,
  double? idNumber,
  int? licenseNumber,
  String? licenseIdProof,
  String? vehicleType,
  String? dob,
  String? vehicleNumber,
  String? uaeId,
  String? idUpload,
  String? licenseUpload,
  String? vehicleRegistrationUpload,
  String? uid,
  String? pidno,
  String? pidcertificate,
  String? plicenceno,
  String? plicenceCerti,
  String? approveStatus,
  String? phoneNumber,
  String? companyName,
  String? companyId,
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  DocumentReference? company,
  String? driverId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address1': address1,
      'address2': address2,
      'city': city,
      'country': country,
      'first_name': firstName,
      'last_name': lastName,
      'id_number': idNumber,
      'license_number': licenseNumber,
      'license_id_proof': licenseIdProof,
      'vehicle_type': vehicleType,
      'dob': dob,
      'vehicle_number': vehicleNumber,
      'uae_id': uaeId,
      'id_upload': idUpload,
      'license_upload': licenseUpload,
      'vehicle_registration_upload': vehicleRegistrationUpload,
      'uid': uid,
      'pidno': pidno,
      'pidcertificate': pidcertificate,
      'plicenceno': plicenceno,
      'plicence_certi': plicenceCerti,
      'approve_status': approveStatus,
      'phone_number': phoneNumber,
      'company_name': companyName,
      'company_id': companyId,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'company': company,
      'driver_id': driverId,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryRecordDocumentEquality implements Equality<DeliveryRecord> {
  const DeliveryRecordDocumentEquality();

  @override
  bool equals(DeliveryRecord? e1, DeliveryRecord? e2) {
    return e1?.address1 == e2?.address1 &&
        e1?.address2 == e2?.address2 &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.idNumber == e2?.idNumber &&
        e1?.licenseNumber == e2?.licenseNumber &&
        e1?.licenseIdProof == e2?.licenseIdProof &&
        e1?.vehicleType == e2?.vehicleType &&
        e1?.dob == e2?.dob &&
        e1?.vehicleNumber == e2?.vehicleNumber &&
        e1?.uaeId == e2?.uaeId &&
        e1?.idUpload == e2?.idUpload &&
        e1?.licenseUpload == e2?.licenseUpload &&
        e1?.vehicleRegistrationUpload == e2?.vehicleRegistrationUpload &&
        e1?.uid == e2?.uid &&
        e1?.pidno == e2?.pidno &&
        e1?.pidcertificate == e2?.pidcertificate &&
        e1?.plicenceno == e2?.plicenceno &&
        e1?.plicenceCerti == e2?.plicenceCerti &&
        e1?.approveStatus == e2?.approveStatus &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.companyName == e2?.companyName &&
        e1?.companyId == e2?.companyId &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.company == e2?.company &&
        e1?.driverId == e2?.driverId;
  }

  @override
  int hash(DeliveryRecord? e) => const ListEquality().hash([
        e?.address1,
        e?.address2,
        e?.city,
        e?.country,
        e?.firstName,
        e?.lastName,
        e?.idNumber,
        e?.licenseNumber,
        e?.licenseIdProof,
        e?.vehicleType,
        e?.dob,
        e?.vehicleNumber,
        e?.uaeId,
        e?.idUpload,
        e?.licenseUpload,
        e?.vehicleRegistrationUpload,
        e?.uid,
        e?.pidno,
        e?.pidcertificate,
        e?.plicenceno,
        e?.plicenceCerti,
        e?.approveStatus,
        e?.phoneNumber,
        e?.companyName,
        e?.companyId,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.company,
        e?.driverId
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveryRecord;
}
