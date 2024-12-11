import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'choose_type_model.dart';
export 'choose_type_model.dart';

class ChooseTypeWidget extends StatefulWidget {
  const ChooseTypeWidget({super.key});

  @override
  State<ChooseTypeWidget> createState() => _ChooseTypeWidgetState();
}

class _ChooseTypeWidgetState extends State<ChooseTypeWidget> {
  late ChooseTypeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseTypeModel());

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
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    width: double.infinity,
                    height: 506.0,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Lottie.asset(
                        'assets/jsons/Animation_-_1725255653821.json',
                        width: 353.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                        repeat: false,
                        animate: true,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 15.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 254.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1x8ryopv' /* SELECT BUSINESS TYPE */,
                                              ),
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Jaldi',
                                                        color: Colors.black,
                                                        fontSize: 19.0,
                                                        letterSpacing: 1.5,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 30.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowRadioButton(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'itmd8p6h' /* Company/Business              ... */,
                                                                )
                                                              ].toList(),
                                                              onChanged: (_model
                                                                              .individualValue !=
                                                                          null &&
                                                                      _model.individualValue !=
                                                                          '')
                                                                  ? null
                                                                  : (val) =>
                                                                      safeSetState(
                                                                          () {}),
                                                              controller: _model
                                                                      .companyValueController ??=
                                                                  FormFieldController<
                                                                          String>(
                                                                      null),
                                                              optionHeight:
                                                                  30.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Jaldi',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                              buttonPosition:
                                                                  RadioButtonPosition
                                                                      .right,
                                                              direction:
                                                                  Axis.vertical,
                                                              radioButtonColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              inactiveRadioButtonColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              toggleable: true,
                                                              horizontalAlignment:
                                                                  WrapAlignment
                                                                      .end,
                                                              verticalAlignment:
                                                                  WrapCrossAlignment
                                                                      .start,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    50.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '1qid2qqr' /* Individual                    ... */,
                                                                  )
                                                                ].toList(),
                                                                onChanged: (_model.companyValue !=
                                                                            null &&
                                                                        _model.companyValue !=
                                                                            '')
                                                                    ? null
                                                                    : (val) =>
                                                                        safeSetState(
                                                                            () {}),
                                                                controller: _model
                                                                        .individualValueController ??=
                                                                    FormFieldController<
                                                                            String>(
                                                                        null),
                                                                optionHeight:
                                                                    30.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Jaldi',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .right,
                                                                direction: Axis
                                                                    .vertical,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                inactiveRadioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                toggleable:
                                                                    true,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .end,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 20.0, 15.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await Future.wait([
                                                Future(() async {
                                                  if (_model.individualValue !=
                                                          null &&
                                                      _model.individualValue !=
                                                          '') {
                                                    context
                                                        .pushNamed('person01');
                                                  } else {
                                                    return;
                                                  }
                                                }),
                                                Future(() async {
                                                  if (_model.companyValue !=
                                                          null &&
                                                      _model.companyValue !=
                                                          '') {
                                                    context
                                                        .pushNamed('company01');
                                                  } else {
                                                    return;
                                                  }
                                                }),
                                              ]);
                                              if ((_model.companyValue !=
                                                          null &&
                                                      _model.companyValue !=
                                                          '') &&
                                                  (_model.individualValue !=
                                                          null &&
                                                      _model.individualValue !=
                                                          '')) {
                                                context.pushNamed('ChooseType');

                                                return;
                                              } else {
                                                return;
                                              }
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'kjbcjtsq' /* Next */,
                                            ),
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 45.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFFFDA900),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFF3D0B0B),
                                                    letterSpacing: 0.0,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 10.0,
                                              ),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                                bottomRight:
                                                    Radius.circular(5.0),
                                                topLeft: Radius.circular(5.0),
                                                topRight: Radius.circular(5.0),
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
                      ],
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
