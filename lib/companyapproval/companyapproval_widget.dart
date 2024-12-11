import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'companyapproval_model.dart';
export 'companyapproval_model.dart';

class CompanyapprovalWidget extends StatefulWidget {
  const CompanyapprovalWidget({super.key});

  @override
  State<CompanyapprovalWidget> createState() => _CompanyapprovalWidgetState();
}

class _CompanyapprovalWidgetState extends State<CompanyapprovalWidget> {
  late CompanyapprovalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  Stream<DocumentSnapshot>? statusStream;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyapprovalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));

    // Set up real-time listener for user status
    final user = FirebaseAuth.instance.currentUser?.uid ?? '';
    if (user != null) {
      final userDocRef = FirebaseFirestore.instance
          .collection('delivery')
          .doc(user);

      statusStream = userDocRef.snapshots();

      statusStream?.listen((snapshot) {
        if (snapshot.exists) {
          // Explicitly cast snapshot data to Map<String, dynamic>
          final data = snapshot.data() as Map<String, dynamic>?;
          final status = data?['Status'] ?? 'Not Approved';
          final userId = FirebaseAuth.instance.currentUser?.uid ?? '';

          // Show toast for debugging
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('UserId: $userId, Current Status: $status'),
              duration: const Duration(seconds: 5),
            ),
          );

          if (status == 'Approved') {
            // Navigate to orderspage
            context.pushNamed('orderspage');
          }
        } else {
          // Debug if the document doesn't exist
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No document found for the current user.'),
              duration: Duration(seconds: 2),
            ),
          );
        }
      });


    }
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
        backgroundColor: const Color(0xFF183835),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'mnuvstod' /* Your Profile is being Validate... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Jaldi',
                        color: Colors.white,
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -0.64),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Container(
                  width: double.infinity,
                  height: 300.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Lottie.asset(
                      'assets/jsons/pmxQRduRQP.json',
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.contain,
                      animate: true,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
