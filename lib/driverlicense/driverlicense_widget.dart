import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'driverlicense_model.dart';
export 'driverlicense_model.dart';

class DriverlicenseWidget extends StatefulWidget {
  const DriverlicenseWidget({super.key});

  @override
  State<DriverlicenseWidget> createState() => _DriverlicenseWidgetState();
}

class _DriverlicenseWidgetState extends State<DriverlicenseWidget> {
  late DriverlicenseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DriverlicenseModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 640.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    25.0, 10.0, 25.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '78y4yggh' /* Driver’s License */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Jaldi',
                                              fontSize: 21.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 625.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'm17qcp4j' /* License number */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Abel',
                                                          color: Colors.black,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF183835),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Abel',
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                                            child: GestureDetector(
                                              onTap: () async {
                                                try {
                                                  // Allow user to pick a file
                                                  final result = await FilePicker.platform.pickFiles(
                                                    type: FileType.custom,
                                                    allowedExtensions: ['pdf'], // Restrict to PDF files
                                                  );

                                                  if (result == null || result.files.isEmpty) {
                                                    Fluttertoast.showToast(
                                                      msg: "No file selected",
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.BOTTOM,
                                                    );
                                                    return;
                                                  }

                                                  // Get the file details
                                                  final filePath = result.files.single.path;
                                                  final fileName = result.files.single.name;

                                                  if (filePath == null) {
                                                    Fluttertoast.showToast(
                                                      msg: "Invalid file",
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.BOTTOM,
                                                    );
                                                    return;
                                                  }

                                                  // Get the current user's UID
                                                  final user = FirebaseAuth.instance.currentUser;
                                                  if (user == null) {
                                                    Fluttertoast.showToast(
                                                      msg: "User not logged in",
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.BOTTOM,
                                                    );
                                                    return;
                                                  }
                                                  final userUid = user.uid;

                                                  // Define the Firebase path under users/{useruid}/license/
                                                  final storageRef = FirebaseStorage.instance
                                                      .ref()
                                                      .child('users/$userUid/license/$fileName');

                                                  // Start file upload and show progress
                                                  final file = File(filePath);
                                                  final uploadTask = storageRef.putFile(file);

                                                  // Show loading indicator while uploading
                                                  showDialog(
                                                    context: context,
                                                    barrierDismissible: false,
                                                    builder: (context) => const Center(
                                                      child: CircularProgressIndicator(),
                                                    ),
                                                  );

                                                  uploadTask.snapshotEvents.listen((event) {
                                                    final progress =
                                                        (event.bytesTransferred / event.totalBytes) * 100;
                                                    Fluttertoast.showToast(
                                                      msg: "Uploading $fileName: ${progress.toStringAsFixed(2)}%",
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.BOTTOM,
                                                    );
                                                  });

                                                  // Wait for the upload to complete
                                                  final snapshot = await uploadTask.whenComplete(() => {});

                                                  // Hide loading indicator
                                                  Navigator.of(context).pop();

                                                  // Get download URL
                                                  final downloadUrl = await snapshot.ref.getDownloadURL();

                                                  // Save the file URL and name in the model
                                                  setState(() {
                                                    _model.uploadedFileUrl = downloadUrl;
                                                    _model.uploadedFileName = fileName;
                                                  });

                                                  Fluttertoast.showToast(
                                                    msg: "$fileName uploaded successfully",
                                                    toastLength: Toast.LENGTH_SHORT,
                                                    gravity: ToastGravity.BOTTOM,
                                                  );
                                                } catch (e) {
                                                  // Hide loading indicator in case of error
                                                  Navigator.of(context).pop();

                                                  Fluttertoast.showToast(
                                                    msg: "Error during file upload: $e",
                                                    toastLength: Toast.LENGTH_SHORT,
                                                    gravity: ToastGravity.BOTTOM,
                                                  );
                                                }
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: 176.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                      child: Icon(
                                                        Icons.cloud_upload,
                                                        color: Color(0xFF5FA7DD),
                                                        size: 36.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                      child: Text(
                                                        _model.uploadedFileName ?? "Select Your File",
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Abel',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                      child: Text(
                                                        _model.uploadedFileUrl != null
                                                            ? "File URL: ${_model.uploadedFileUrl}"
                                                            : "Upload only PDF",
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Abel',
                                                          fontSize: 8.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        try {
                          // Ensure the user is logged in
                          final userId = FirebaseAuth.instance.currentUser?.uid;
                          if (userId == null) {
                            Fluttertoast.showToast(
                              msg: "User not logged in",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                            return;
                          }

                          // Get input values
                          final licenseNumber = _model.textController?.text.trim();
                          if (licenseNumber == null || licenseNumber.isEmpty) {
                            Fluttertoast.showToast(
                              msg: "Please enter a license number",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                            return;
                          }

                          if (_model.uploadedFileUrl == null || _model.uploadedFileUrl!.isEmpty) {
                            Fluttertoast.showToast(
                              msg: "Please upload a file",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                            return;
                          }

                          // Reference to the Firestore collection
                          final firestore = FirebaseFirestore.instance;
                          final deliveryCollection = firestore.collection('delivery');

                          // Check if a record exists for the current user
                          final querySnapshot = await deliveryCollection
                              .where('userId', isEqualTo: userId)
                              .get();

                          if (querySnapshot.docs.isNotEmpty) {
                            // Get the first matching document and update it
                            final docRef = querySnapshot.docs.first.reference;
                            await docRef.update({
                              'licenseNumber': licenseNumber,
                              'licenseFile': _model.uploadedFileUrl,
                            });

                            Fluttertoast.showToast(
                              msg: "License details updated successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                          } else {
                            // Handle case where no matching document is found
                            Fluttertoast.showToast(
                              msg: "No matching delivery record found",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                          }

                          // Navigate to the next page
                          context.pushNamed('companyapproval');
                        } catch (e) {
                          Fluttertoast.showToast(
                            msg: "Error updating details: $e",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                          );
                        }
                      },
                      text: FFLocalizations.of(context).getText(
                        '0op6usxn' /* Submit */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 60.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFFDA900),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Montserrat',
                                  color: const Color(0xFF3D0B0B),
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
