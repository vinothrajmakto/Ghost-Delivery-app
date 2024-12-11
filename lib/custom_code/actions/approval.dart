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

Future<bool> approval(String uid) async {
  final firestore = FirebaseFirestore.instance;
  final deliveryCollection = firestore.collection('delivery');

  try {
    // Query the delivery collection for a document where the uid field matches the provided UID
    final querySnapshot =
        await deliveryCollection.where('uid', isEqualTo: uid).get();

    // Check if any documents were found
    if (querySnapshot.docs.isNotEmpty) {
      final docSnapshot = querySnapshot.docs.first;

      // Get the approve_status field from the document
      final approveStatus = docSnapshot['approve_status'];

      // Check if the approve_status is 'approved'
      if (approveStatus == 'approved') {
        return true; // Return true if the status is approved
      }

      return false; // Return false if the status is not approved
    }

    return false; // Return false if no document with the UID was found
  } catch (e) {
    // Handle any errors
    print("Error checking approval status: $e");
    return false; // Optionally, return false or handle the error differently
  }
}
