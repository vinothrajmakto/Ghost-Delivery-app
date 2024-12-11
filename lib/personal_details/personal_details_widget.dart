import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'personal_details_model.dart';
export 'personal_details_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PersonalDetailsWidget extends StatefulWidget {
  const PersonalDetailsWidget({super.key});

  @override
  State<PersonalDetailsWidget> createState() => _PersonalDetailsWidgetState();
}

class _PersonalDetailsWidgetState extends State<PersonalDetailsWidget> {
  late PersonalDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalDetailsModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController3?.text = FFLocalizations.of(context).getText(
            '10oxk0tt' /* Date of Birth */,
          );
        }));
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
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 768.0,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            18.0, 0.0, 0.0, 15.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'n4ubi8ez' /* Personal Details */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Jaldi',
                                                fontSize: 21.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController1,
                                          focusNode: _model.textFieldFocusNode1,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'mm8bf0q5' /* First Name */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Abel',
                                                      color: const Color(0xFF110000),
                                                      fontSize: 11.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF183835),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'rqwpx0ue' /* Last Name */,
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
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF183835),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController3,
                                          focusNode: _model.textFieldFocusNode3,
                                          autofocus: true,
                                          readOnly: true,  // Make the field read-only
                                          onTap: () async {
                                            // Open date picker on tap
                                            DateTime? selectedDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(1900),  // Set minimum date
                                              lastDate: DateTime.now(),  // Set maximum date to today
                                            );

                                            // If a date is picked, format and set it to the controller
                                            if (selectedDate != null) {
                                              _model.textController3?.text =
                                              "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}";
                                            }
                                          },
                                          decoration: InputDecoration(
                                            isDense: false,
                                            labelText: "Date of Birth",
                                            labelStyle: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Abel',
                                              color: Colors.black,
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                            ),
                                            hintStyle: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(context).alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF183835),
                                                width: 2.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(context).error,
                                                width: 2.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme.of(context).error,
                                                width: 2.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Abel',
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                          ),
                                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                                          validator: _model.textController3Validator.asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController4,
                                          focusNode: _model.textFieldFocusNode4,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '2nl8p8nu' /* Address1 */,
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
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF183835),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textController4Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController5,
                                          focusNode: _model.textFieldFocusNode5,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ucvt7fla' /* Address2 */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Abel',
                                                      fontSize: 11.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF183835),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textController5Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController1 ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'ljf7jya8' /* Dubai */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'bdb4cdwu' /* AbuDhabhi */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropDownValue1 = val),
                                        width: double.infinity,
                                        height: 56.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Abel',
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'zfbpw1wh' /* City */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              height: 38.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'pagfz0lg' /* Vehicle Details */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Jaldi',
                                                          color: Colors.black,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '3kjtinwf' /* Car */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            't4ea6ida' /* Two Wheeler */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'c8wxhdm6' /* Truck */,
                                          )
                                        ],
                                        onChanged: (val) => safeSetState(
                                            () => _model.dropDownValue2 = val),
                                        width: double.infinity,
                                        height: 56.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Abel',
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'a0jdq59q' /* Vehicle Type */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController6,
                                          focusNode: _model.textFieldFocusNode6,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'pukoxyhv' /* Vehicle Registration Number */,
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
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF183835),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textController6Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),




                        Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(18.0, 15.0, 18.0, 0.0),
                        child: GestureDetector(
                          onTap: () async {
                            try {
                              FilePickerResult? result = await FilePicker.platform.pickFiles(
                                type: FileType.custom,
                                allowedExtensions: ['png', 'jpg', 'jpeg', 'pdf', 'docx'],
                              );

                              if (result != null) {
                                final pickedFile = result.files.first;
                                final file = File(pickedFile.path!);

                                setState(() {
                                  _model.uploadedFileName = pickedFile.name;
                                  _model.isUploading = true;
                                });

                                File? finalFile = file;
                                if (['png', 'jpg', 'jpeg'].contains(pickedFile.extension)) {
                                  // Compress image if needed
                                  if (pickedFile.size > 200 * 1024) {
                                    finalFile = await compressImage(file);  // Use optimized compression
                                  }
                                }

                                final userId = FirebaseAuth.instance.currentUser?.uid ?? 'anonymous';
                                final storageRef = FirebaseStorage.instance.ref().child('users/$userId/${pickedFile.name}');

                                // Upload file as byte data for better performance (alternative)
                                Uint8List fileBytes = await finalFile.readAsBytes();
                                UploadTask uploadTask = storageRef.putData(fileBytes);

                                uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
                                  double progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;

                                  // Show progress updates every 10% to avoid excessive toasts
                                  if (progress % 10 == 0) {
                                    Fluttertoast.showToast(
                                      msg: "Upload is ${progress.toStringAsFixed(0)}% complete.",
                                      toastLength: Toast.LENGTH_SHORT,
                                    );
                                  }
                                });


                                await uploadTask;

                                final fileUrl = await storageRef.getDownloadURL();

                                setState(() {
                                  _model.uploadedFileUrl = fileUrl;
                                });

                                // Fluttertoast.showToast(
                                //   msg: "File uploaded successfully: ${pickedFile.name}",
                                //   toastLength: Toast.LENGTH_SHORT,
                                // );
                              } else {
                                Fluttertoast.showToast(
                                  msg: "No file selected",
                                  toastLength: Toast.LENGTH_SHORT,
                                );
                              }
                            } catch (e) {
                              Fluttertoast.showToast(
                                msg: "Error uploading file: $e",
                                toastLength: Toast.LENGTH_SHORT,
                              );
                            } finally {
                              setState(() {
                                _model.isUploading = false;
                              });
                            }
                          },



                         child: Container(
                            width: double.infinity,
                            height: 125.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: _model.isUploading
                                  ? CircularProgressIndicator() // Show loading indicator
                                  : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (_model.uploadedFileName != null)
                                    Text(
                                      _model.uploadedFileName!,
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Abel',
                                        fontSize: 11.0,
                                        letterSpacing: 0.0,
                                      ),
                                    )
                                  else
                                    const Icon(
                                      Icons.cloud_upload,
                                      color: Color(0xFF81A0FF),
                                      size: 36.0,
                                    ),
                                  const SizedBox(height: 5),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '14dle66y' /* Upload vehicle Registration */,
                                    ),
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Abel',
                                      fontSize: 11.0,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'xzjuai85' /* png, pdf, jpg, docx accepted */,
                                    ),
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Abel',
                                      fontSize: 8.0,
                                      letterSpacing: 0.0,
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final FirebaseFirestore firestore = FirebaseFirestore.instance;
                      final String userId = FirebaseAuth.instance.currentUser?.uid ?? '';

                      if (userId.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "User not logged in",
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

                      final DocumentReference deliveryDocRef = firestore.collection('delivery').doc(userId);

                      final String field1 = _model.textController1?.text ?? '';
                      final String field2 = _model.textController2?.text ?? '';
                      final String field3 = _model.textController3?.text ?? '';
                      final String field4 = _model.textController4?.text ?? '';
                      final String field5 = _model.textController5?.text ?? '';
                      final String field6 = _model.textController6?.text ?? '';
                      final String city = _model.dropDownValue1 ?? '';
                      final String vehicleType = _model.dropDownValue2 ?? '';

                      try {
                        final docSnapshot = await deliveryDocRef.get();

                        final data = {
                          'First Name': field1,
                          'Last Name': field2,
                          'DOB': field3,
                          'Address1': field4,
                          'Address2': field5,
                          'Vehicle Number': field6,
                          'vehicleType': vehicleType,
                          'city': city,
                          'VehiclePhoto': _model.uploadedFileUrl,
                          'Status': 'Not Approved',
                        };

                        if (docSnapshot.exists) {
                          await deliveryDocRef.update(data);
                          Fluttertoast.showToast(
                            msg: "Details updated successfully",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                          );
                        } else {
                          await deliveryDocRef.set({
                            'userId': userId,
                            ...data,
                          });
                          Fluttertoast.showToast(
                            msg: "Details saved successfully",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                          );
                        }

                        context.pushNamed(
                          'driverkyc',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 200),
                            ),
                          },
                        );
                      } catch (e) {
                        Fluttertoast.showToast(
                          msg: "Error: Unable to save details",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                        );
                      }
                    },
                    text: FFLocalizations.of(context).getText(
                      '87wr6sht' /* Next */,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFFDA900),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
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
    );
  }

  /// Compress Image Function Using Compute
  Future<File> compressImage(File file) async {
    final image = img.decodeImage(await file.readAsBytes());
    if (image == null) throw Exception("Unable to decode image.");

    final compressed = img.encodeJpg(image, quality: 85);
    final tempDir = Directory.systemTemp;
    final tempFile = File('${tempDir.path}/${file.uri.pathSegments.last}');
    return tempFile.writeAsBytes(compressed);
  }
}
