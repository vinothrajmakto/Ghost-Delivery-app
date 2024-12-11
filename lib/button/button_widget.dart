import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());

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
        backgroundColor: const Color(0xFFF1F4F8),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('intro3');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '97c478tw' /* Introduction */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('LoginPage');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'adhac9cx' /* Login */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('otp');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '8yea9n9y' /* OTP */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('ChooseType');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'dhytcryt' /* Choose Type */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('company01');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '85nzy73u' /* Business Registration */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('CompanyDetails');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'g2d4souw' /* Company Details */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('company_id');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'vaedjjah' /* Company Documents Upload */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                                'businessregistrationcertificate');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '2dsw5f2l' /* Company Business Registration ... */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('ownerid');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            's6yf86o5' /* Owner's Id */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('registration');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'uamhgygb' /* Company Driver Registration */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('driverkyc');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'tdpns802' /* Driver Kyc */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context
                                                .pushNamed('driveriddocument');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'q8betnha' /* Driver ID  Document */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('driverlicense');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'cna6g96j' /* Driver License */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('driverdetails');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'wrz25h76' /* Company Driver List */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('person01');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '5wss275m' /* Individual Driver Registration */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context
                                                .pushNamed('PersonalDetails');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'nivmofw0' /* Individual Driver Details */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('person_id');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'qj5vtzqk' /* Individual Documents */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context
                                                .pushNamed('companyapproval');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'q3wbndaj' /* Approval Status */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('orderspage');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'smly84n5' /* Orders page */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('about');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'qzvc3scx' /* Driver Orders Profile */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('payouts');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'rp005cvt' /* Payouts */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('ordersummary');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '4ry2jdb4' /* Orders Summary */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.38),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 16.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed('ratings');
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'd0z3ywxa' /* Ratings */,
                                            ),
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 55.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFFFDA900),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Space Grotesk',
                                                    color: Colors.white,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('map');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '087lewki' /* Map View Details */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('language');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'vqt3g44e' /* Change Language */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('menuorders');
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'hyzqk9w7' /* Profile */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFFDA900),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Space Grotesk',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            elevation: 2.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
