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

Future<bool> blacklist(String mobileNumber) async {
  final firestore = FirebaseFirestore.instance;
  final blacklistCollection = firestore.collection('blacklisted');

  try {
    // Debug: Print the mobile number being queried
    print("Checking blacklist for mobile number: $mobileNumber");

    final querySnapshot = await blacklistCollection
        .where('phone_number', isEqualTo: mobileNumber)
        .get();

    // Debug: Print the number of documents found
    print("Documents found: ${querySnapshot.docs.length}");

    return querySnapshot.docs.isNotEmpty;
  } catch (e) {
    // Debug: Print any errors encountered during the query
    print("Error checking blacklist: $e");
    return false; // Optionally, return false or handle the error differently
  }
}
