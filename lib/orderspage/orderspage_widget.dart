// import '/components/details_widget.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'orderspage_model.dart';
// export 'orderspage_model.dart';
//
// class OrderspageWidget extends StatefulWidget {
//   const OrderspageWidget({
//     super.key,
//     this.driverUid,
//     this.driverName,
//     this.driverPhone,
//   });
//
//   final String? driverUid;
//   final String? driverName;
//   final String? driverPhone;
//
//   @override
//   State<OrderspageWidget> createState() => _OrderspageWidgetState();
// }
//
// class _OrderspageWidgetState extends State<OrderspageWidget> {
//   late OrderspageModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => OrderspageModel());
//
//     _model.switchValue = true;
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
//         body: Padding(
//           padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
//                     child: Text(
//                       FFLocalizations.of(context).getText(
//                         'yyzxah5v' /* Active */,
//                       ),
//                       style: FlutterFlowTheme.of(context).bodyMedium.override(
//                             fontFamily: 'Inter',
//                             color: const Color(0xFFD1D1D1),
//                             fontSize: 15.0,
//                             letterSpacing: 0.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                     ),
//                   ),
//                   Switch.adaptive(
//                     value: _model.switchValue!,
//                     onChanged: (newValue) async {
//                       safeSetState(() => _model.switchValue = newValue);
//                     },
//                     activeColor: FlutterFlowTheme.of(context).primaryBackground,
//                     activeTrackColor: const Color(0xE676D619),
//                     inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
//                     inactiveThumbColor:
//                         FlutterFlowTheme.of(context).secondaryText,
//                   ),
//                   Text(
//                     FFLocalizations.of(context).getText(
//                       'za3g3qgx' /* Inactive */,
//                     ),
//                     style: FlutterFlowTheme.of(context).bodyMedium.override(
//                           fontFamily: 'Inter',
//                           color: const Color(0xFFEE284B),
//                           fontSize: 15.0,
//                           letterSpacing: 0.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
//                 child: SingleChildScrollView(
//                   primary: false,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsetsDirectional.fromSTEB(
//                             15.0, 0.0, 15.0, 20.0),
//                         child: ListView(
//                           padding: EdgeInsets.zero,
//                           shrinkWrap: true,
//                           scrollDirection: Axis.vertical,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 0.0, 0.0, 5.0),
//                               child: Container(
//                                 width: 150.0,
//                                 height: 150.0,
//                                 decoration: BoxDecoration(
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                   borderRadius: const BorderRadius.only(
//                                     bottomLeft: Radius.circular(15.0),
//                                     bottomRight: Radius.circular(15.0),
//                                     topLeft: Radius.circular(15.0),
//                                     topRight: Radius.circular(15.0),
//                                   ),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         const Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   20.0, 10.0, 0.0, 0.0),
//                                           child: Icon(
//                                             Icons.location_on_rounded,
//                                             color: Colors.black,
//                                             size: 28.0,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsetsDirectional.fromSTEB(
//                                                   10.0, 10.0, 0.0, 0.0),
//                                           child: Text(
//                                             FFLocalizations.of(context).getText(
//                                               'zpc81f5k' /* Vivek */,
//                                             ),
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyMedium
//                                                 .override(
//                                                   fontFamily: 'Readex Pro',
//                                                   color: Colors.black,
//                                                   fontSize: 15.0,
//                                                   letterSpacing: 0.0,
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsetsDirectional.fromSTEB(
//                                           50.0, 10.0, 15.0, 0.0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             FFLocalizations.of(context).getText(
//                                               'yj9am48u' /* 48, Al Majarrah Street Hadbat ... */,
//                                             ),
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyMedium
//                                                 .override(
//                                                   fontFamily: 'Inter',
//                                                   color: Colors.black,
//                                                   fontSize: 12.0,
//                                                   letterSpacing: 0.0,
//                                                 ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsetsDirectional.fromSTEB(
//                                           0.0, 5.0, 0.0, 0.0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsetsDirectional.fromSTEB(
//                                                     20.0, 10.0, 0.0, 0.0),
//                                             child: FFButtonWidget(
//                                               onPressed: () async {
//                                                 context.pushNamed('map');
//                                               },
//                                               text: FFLocalizations.of(context)
//                                                   .getText(
//                                                 'fm4lseps' /* View Details */,
//                                               ),
//                                               options: FFButtonOptions(
//                                                 width: 175.0,
//                                                 height: 40.0,
//                                                 padding: const EdgeInsetsDirectional
//                                                     .fromSTEB(
//                                                         24.0, 0.0, 24.0, 0.0),
//                                                 iconPadding:
//                                                     const EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                             0.0, 0.0, 0.0, 0.0),
//                                                 color: const Color(0xFFF3F3F3),
//                                                 textStyle:
//                                                     FlutterFlowTheme.of(context)
//                                                         .titleSmall
//                                                         .override(
//                                                           fontFamily: 'Inter',
//                                                           color: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .primaryText,
//                                                           fontSize: 13.0,
//                                                           letterSpacing: 0.0,
//                                                           fontWeight:
//                                                               FontWeight.bold,
//                                                         ),
//                                                 elevation: 3.0,
//                                                 borderSide: const BorderSide(
//                                                   color: Colors.transparent,
//                                                   width: 1.0,
//                                                 ),
//                                                 borderRadius:
//                                                     BorderRadius.circular(10.0),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: const AlignmentDirectional(-1.0, 1.0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Align(
//                       alignment: const AlignmentDirectional(0.0, 0.0),
//                       child: Padding(
//                         padding:
//                             const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
//                         child: InkWell(
//                           splashColor: Colors.transparent,
//                           focusColor: Colors.transparent,
//                           hoverColor: Colors.transparent,
//                           highlightColor: Colors.transparent,
//                           onTap: () async {
//                             await showModalBottomSheet(
//                               isScrollControlled: true,
//                               backgroundColor: Colors.transparent,
//                               useSafeArea: true,
//                               context: context,
//                               builder: (context) {
//                                 return GestureDetector(
//                                   onTap: () => FocusScope.of(context).unfocus(),
//                                   child: Padding(
//                                     padding: MediaQuery.viewInsetsOf(context),
//                                     child: const SizedBox(
//                                       height: 300.0,
//                                       child: DetailsWidget(),
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ).then((value) => safeSetState(() {}));
//                           },
//                           child: Icon(
//                             Icons.line_weight,
//                             color: FlutterFlowTheme.of(context)
//                                 .secondaryBackground,
//                             size: 24.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import '/components/details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'orderspage_model.dart';
export 'orderspage_model.dart';

class OrderspageWidget extends StatefulWidget {
  const OrderspageWidget({
    super.key,
    this.driverUid,
    this.driverName,
    this.driverPhone,
  });

  final String? driverUid;
  final String? driverName;
  final String? driverPhone;

  @override
  State<OrderspageWidget> createState() => _OrderspageWidgetState();
}

class _OrderspageWidgetState extends State<OrderspageWidget> {
  late OrderspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isActive = true; // State for toggle button

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderspageModel());
    _model.switchValue = true;
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
        backgroundColor: const Color(0xFF183835),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Header with Toggle Button
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "Orders",
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: const Color(0xFFD1D1D1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        isActive ? "Active" : "Inactive",
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: isActive ? const Color(0xFF00FF00) : const Color(0xFFFF0000),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Switch.adaptive(
                        value: isActive,
                        onChanged: (newValue) {
                          setState(() {
                            isActive = newValue;
                          });
                        },
                        activeColor: const Color(0xFF00FF00),
                        inactiveTrackColor: const Color(0xFFFF0000),
                      ),
                    ],
                  ),
                ],
              ),
              // Content Based on Active/Inactive State
              Expanded(
                child: isActive
                    ? StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('orders')
                      .where('driver_status', isEqualTo: 'notassigned')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    final orders = snapshot.data!.docs;

                    if (orders.isEmpty) {
                      return Center(
                        child: Text(
                          "No orders found",
                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                        ),
                      );
                    }

                    return ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      itemCount: orders.length,
                      itemBuilder: (context, index) {
                        final order =
                        orders[index].data() as Map<String, dynamic>;

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.location_on_rounded,
                                        color: Colors.black,
                                        size: 28.0,
                                      ),
                                    ),
                                    Text(
                                      order['orderId'] ?? 'Unknown',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 5.0),
                                  child: Text(
                                    order['PickupselectedAddress'] ??
                                        'No address provided',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      context.pushNamed('map', extra: {
                                        'orderId': orders[index].id,
                                      });
                                    },
                                    text: "View Details",
                                    options: FFButtonOptions(
                                      width: 175.0,
                                      height: 40.0,
                                      color: const Color(0xFFF3F3F3),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Inter',
                                        color: Colors.black,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      elevation: 3.0,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                )
                    : Center(
                  child: Text(
                    "You are offline, See you soon!",
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
