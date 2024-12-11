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

Future<bool> listed(BuildContext context, String mobileNumber) async {
  // Check if the mobile number is present in the blacklisted collection in Firebase
  bool isBlacklisted = await FirebaseFirestore.instance
      .collection('blacklisted')
      .doc(mobileNumber)
      .get()
      .then((doc) => doc.exists);

  // If the mobile number is blacklisted, show an alert and deny access
  if (isBlacklisted) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Access Denied'),
          content: Text(
              'Your mobile number is blacklisted. Please contact support for assistance.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    return true; // Return true if the number is blacklisted
  }

  return false; // Return false if the number is not blacklisted
}
