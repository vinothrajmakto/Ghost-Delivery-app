// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<String> navigate(String uid, String phoneNumber) async {
  final firestore = FirebaseFirestore.instance;
  final deliveryCollection = firestore.collection('delivery');
  final companyCollection = firestore.collection('company');

  try {
    // Check if the user exists in the delivery collection
    final deliveryQuery = await deliveryCollection
        .where('uid', isEqualTo: uid)
        .where('phone_number', isEqualTo: phoneNumber)
        .get();

    if (deliveryQuery.docs.isNotEmpty) {
      return 'orderspage'; // User exists in the delivery collection
    }

    // Check if the user exists in the company collection
    final companyQuery = await companyCollection
        .where('uid', isEqualTo: uid)
        .where('phone_number', isEqualTo: phoneNumber)
        .get();

    if (companyQuery.docs.isNotEmpty) {
      return 'driverdetails'; // User exists in the company collection
    }

    // If the user is not found in either collection, they are new
    return 'chooseType';
  } catch (e) {
    // Handle any errors
    print("Error checking user collections: $e");
    return 'errorPage'; // Optionally, return an error page or handle the error differently
  }
}
