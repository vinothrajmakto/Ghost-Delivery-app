// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future role() async {
  // whenever the user tries to login i need to update the user collection fields like isloggedin will be true and lastactiveapp will be delivery and lastactivetime will be current date and time
// Assuming that the user collection is stored in a database and can be accessed through a service or repository

  final user = FirebaseAuth.instance.currentUser;
  final userRef = FirebaseFirestore.instance.collection('user').doc(user?.uid);

  // Update the fields in the user document
  await userRef.update({
    'isloggedin': true,
    'lastactiveapp': 'delivery',
    'lastactivetime': DateTime.now(),
  });
}
