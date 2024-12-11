// import '/flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'home_page_model.dart';
// export 'home_page_model.dart';
//
// class HomePageWidget extends StatefulWidget {
//   const HomePageWidget({super.key});
//
//   @override
//   State<HomePageWidget> createState() => _HomePageWidgetState();
// }
//
// class _HomePageWidgetState extends State<HomePageWidget> {
//   late HomePageModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => HomePageModel());
//
//     // On page load action.
//     SchedulerBinding.instance.addPostFrameCallback((_) async {
//       context.pushNamed('intro3');
//     });
//
//     WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: const Color(0xFF183835),
//         body: Align(
//           alignment: const AlignmentDirectional(0.0, 0.0),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(0.0),
//             child: Image.asset(
//               'assets/images/Ghost_-_Logo.png',
//               width: 566.0,
//               height: 283.0,
//               fit: BoxFit.none,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:delivery/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  void initState() {
    super.initState();

    // Check authentication and redirect on page load
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkUserState());
  }

  Future<void> _checkUserState() async {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      // User is logged in
      final uid = currentUser.uid;
      try {
        final deliveryDoc = await FirebaseFirestore.instance
            .collection('delivery')
            .doc(uid)
            .get();

        if (deliveryDoc.exists) {
          final status = deliveryDoc.data()?['Status'] ?? 'Not Approved';

          if (status == 'Approved') {
            context.pushNamed('orderspage');
          } else {
            context.pushNamed('companyapproval');
          }
        } else {
          context.pushNamed('ChooseType');
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    } else {
      // User is not logged in, redirect to the intro or OTP page
      context.pushNamed('intro3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        backgroundColor: const Color(0xFF183835),
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.asset(
              'assets/images/Ghost_-_Logo.png',
              width: 566.0,
              height: 283.0,
              fit: BoxFit.none,
            ),
          ),
        ),
      ),
    );
  }
}