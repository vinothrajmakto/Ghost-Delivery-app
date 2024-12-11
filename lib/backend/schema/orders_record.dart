import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "measurement" field.
  String? _measurement;
  String get measurement => _measurement ?? '';
  bool hasMeasurement() => _measurement != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "payment_date" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  bool hasPaymentDate() => _paymentDate != null;

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shipment_value" field.
  int? _shipmentValue;
  int get shipmentValue => _shipmentValue ?? 0;
  bool hasShipmentValue() => _shipmentValue != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "driver_name" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  bool hasDriverName() => _driverName != null;

  // "user_location" field.
  LatLng? _userLocation;
  LatLng? get userLocation => _userLocation;
  bool hasUserLocation() => _userLocation != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "driver_location" field.
  LatLng? _driverLocation;
  LatLng? get driverLocation => _driverLocation;
  bool hasDriverLocation() => _driverLocation != null;

  // "driver_uid" field.
  String? _driverUid;
  String get driverUid => _driverUid ?? '';
  bool hasDriverUid() => _driverUid != null;

  // "deliverylocation" field.
  String? _deliverylocation;
  String get deliverylocation => _deliverylocation ?? '';
  bool hasDeliverylocation() => _deliverylocation != null;

  // "pickuplocation" field.
  String? _pickuplocation;
  String get pickuplocation => _pickuplocation ?? '';
  bool hasPickuplocation() => _pickuplocation != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "paymenttype" field.
  String? _paymenttype;
  String get paymenttype => _paymenttype ?? '';
  bool hasPaymenttype() => _paymenttype != null;

  // "user_address" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  bool hasUserAddress() => _userAddress != null;

  // "is_driver_assigned" field.
  bool? _isDriverAssigned;
  bool get isDriverAssigned => _isDriverAssigned ?? false;
  bool hasIsDriverAssigned() => _isDriverAssigned != null;

  // "driver_phoneno" field.
  String? _driverPhoneno;
  String get driverPhoneno => _driverPhoneno ?? '';
  bool hasDriverPhoneno() => _driverPhoneno != null;

  // "user_phoneNo" field.
  String? _userPhoneNo;
  String get userPhoneNo => _userPhoneNo ?? '';
  bool hasUserPhoneNo() => _userPhoneNo != null;

  // "deliverygeolocation" field.
  LatLng? _deliverygeolocation;
  LatLng? get deliverygeolocation => _deliverygeolocation;
  bool hasDeliverygeolocation() => _deliverygeolocation != null;

  // "pickupgeolocation" field.
  LatLng? _pickupgeolocation;
  LatLng? get pickupgeolocation => _pickupgeolocation;
  bool hasPickupgeolocation() => _pickupgeolocation != null;

  void _initializeFields() {
    _weight = snapshotData['weight'] as String?;
    _measurement = snapshotData['measurement'] as String?;
    _content = snapshotData['content'] as String?;
    _amount = castToType<int>(snapshotData['amount']);
    _orderId = snapshotData['order_id'] as String?;
    _paymentDate = snapshotData['payment_date'] as DateTime?;
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
    _shipmentValue = castToType<int>(snapshotData['shipment_value']);
    _userName = snapshotData['user_name'] as String?;
    _driverName = snapshotData['driver_name'] as String?;
    _userLocation = snapshotData['user_location'] as LatLng?;
    _userid = snapshotData['userid'] as String?;
    _driverLocation = snapshotData['driver_location'] as LatLng?;
    _driverUid = snapshotData['driver_uid'] as String?;
    _deliverylocation = snapshotData['deliverylocation'] as String?;
    _pickuplocation = snapshotData['pickuplocation'] as String?;
    _city = snapshotData['city'] as String?;
    _paymenttype = snapshotData['paymenttype'] as String?;
    _userAddress = snapshotData['user_address'] as String?;
    _isDriverAssigned = snapshotData['is_driver_assigned'] as bool?;
    _driverPhoneno = snapshotData['driver_phoneno'] as String?;
    _userPhoneNo = snapshotData['user_phoneNo'] as String?;
    _deliverygeolocation = snapshotData['deliverygeolocation'] as LatLng?;
    _pickupgeolocation = snapshotData['pickupgeolocation'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? weight,
  String? measurement,
  String? content,
  int? amount,
  String? orderId,
  DateTime? paymentDate,
  int? phoneNumber,
  int? shipmentValue,
  String? userName,
  String? driverName,
  LatLng? userLocation,
  String? userid,
  LatLng? driverLocation,
  String? driverUid,
  String? deliverylocation,
  String? pickuplocation,
  String? city,
  String? paymenttype,
  String? userAddress,
  bool? isDriverAssigned,
  String? driverPhoneno,
  String? userPhoneNo,
  LatLng? deliverygeolocation,
  LatLng? pickupgeolocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'weight': weight,
      'measurement': measurement,
      'content': content,
      'amount': amount,
      'order_id': orderId,
      'payment_date': paymentDate,
      'phone_number': phoneNumber,
      'shipment_value': shipmentValue,
      'user_name': userName,
      'driver_name': driverName,
      'user_location': userLocation,
      'userid': userid,
      'driver_location': driverLocation,
      'driver_uid': driverUid,
      'deliverylocation': deliverylocation,
      'pickuplocation': pickuplocation,
      'city': city,
      'paymenttype': paymenttype,
      'user_address': userAddress,
      'is_driver_assigned': isDriverAssigned,
      'driver_phoneno': driverPhoneno,
      'user_phoneNo': userPhoneNo,
      'deliverygeolocation': deliverygeolocation,
      'pickupgeolocation': pickupgeolocation,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.weight == e2?.weight &&
        e1?.measurement == e2?.measurement &&
        e1?.content == e2?.content &&
        e1?.amount == e2?.amount &&
        e1?.orderId == e2?.orderId &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shipmentValue == e2?.shipmentValue &&
        e1?.userName == e2?.userName &&
        e1?.driverName == e2?.driverName &&
        e1?.userLocation == e2?.userLocation &&
        e1?.userid == e2?.userid &&
        e1?.driverLocation == e2?.driverLocation &&
        e1?.driverUid == e2?.driverUid &&
        e1?.deliverylocation == e2?.deliverylocation &&
        e1?.pickuplocation == e2?.pickuplocation &&
        e1?.city == e2?.city &&
        e1?.paymenttype == e2?.paymenttype &&
        e1?.userAddress == e2?.userAddress &&
        e1?.isDriverAssigned == e2?.isDriverAssigned &&
        e1?.driverPhoneno == e2?.driverPhoneno &&
        e1?.userPhoneNo == e2?.userPhoneNo &&
        e1?.deliverygeolocation == e2?.deliverygeolocation &&
        e1?.pickupgeolocation == e2?.pickupgeolocation;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.weight,
        e?.measurement,
        e?.content,
        e?.amount,
        e?.orderId,
        e?.paymentDate,
        e?.phoneNumber,
        e?.shipmentValue,
        e?.userName,
        e?.driverName,
        e?.userLocation,
        e?.userid,
        e?.driverLocation,
        e?.driverUid,
        e?.deliverylocation,
        e?.pickuplocation,
        e?.city,
        e?.paymenttype,
        e?.userAddress,
        e?.isDriverAssigned,
        e?.driverPhoneno,
        e?.userPhoneNo,
        e?.deliverygeolocation,
        e?.pickupgeolocation
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
