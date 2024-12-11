import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:telephony/telephony.dart';
import 'otp_model.dart';
export 'otp_model.dart';
import 'package:intl/intl.dart';


class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  late OtpModel _model;
  final Telephony telephony = Telephony.instance;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isVerifying = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpModel());

    // Request SMS permissions and start listening for SMS
    requestSmsPermissions();

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  Future<void> requestSmsPermissions() async {
    bool? permissionsGranted = await telephony.requestPhoneAndSmsPermissions;

    if (permissionsGranted != null && permissionsGranted) {
      telephony.listenIncomingSms(
        onNewMessage: (SmsMessage message) {
          if (message.body != null && message.body!.contains("is your verification code")) {
            final otp = extractOtp(message.body!);
            if (otp != null) {
              _model.pinCodeController.text = otp;
              Future.delayed(Duration(seconds: 1), () { // Delay before verifying
                _verifyOtp(otp); // Automatically verify the OTP
              });// Automatically verify the OTP
            }
          }
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('')),
      );
    }
  }


  String? extractOtp(String messageBody) {
    final regex = RegExp(r'(\d{6})'); // Assuming OTP is a 6-digit number
    final match = regex.firstMatch(messageBody);
    return match?.group(0);
  }
  void _verifyOtp(String smsCode) async {
    if (_isVerifying) return; // Prevent multiple verifications
    _isVerifying = true; // Set the flag to true

    GoRouter.of(context).prepareAuthEvent();

    final phoneVerifiedUser = await authManager.verifySmsCode(
      context: context,
      smsCode: smsCode,
    );

    _isVerifying = false;

    if (phoneVerifiedUser != null) {
      final uid = phoneVerifiedUser.uid;

      try {
        // Access the delivery collection
        final deliveryDoc = await FirebaseFirestore.instance
            .collection('delivery')
            .doc(uid)
            .get();

        if (deliveryDoc.exists) {
          // Document exists, check the Status field
          final data = deliveryDoc.data() as Map<String, dynamic>?;
          final status = data?['Status'] ?? 'Not Approved';

          if (status == 'Approved') {
            // Navigate to orders page
            print('Status is Approved. Navigating to orderspage.');
            context.pushNamedAuth(
              'orderspage',
              context.mounted,
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                  duration: Duration(milliseconds: 300),
                ),
              },
            );
          } else {
            // Navigate to company approval page
            print('Status is Not Approved. Navigating to companyapproval.');
            context.pushNamedAuth(
              'companyapproval',
              context.mounted,
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                  duration: Duration(milliseconds: 300),
                ),
              },
            );
          }
        } else {
          // No document exists, navigate to ChooseType page
          print('No document in delivery collection. Navigating to ChooseType.');
          context.pushNamedAuth(
            'ChooseType',
            context.mounted,
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 300),
              ),
            },
          );
        }
      } catch (e) {
        print('Error checking delivery collection: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${e.toString()}'),
          ),
        );
      }
    } else {
      // OTP verification failed
      print('OTP verification failed.');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid OTP. Please try again.')),
      );
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '21iczdq9' /* Enter OTP Code */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 30.0,
                                letterSpacing: 1.7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '7swa303e' /* OTP code has been sent to  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Jaldi',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
                                  child: Text(
                                    FFAppState().Phonenumber,
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Jaldi',
                                      color: Colors.black,
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.65),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 30.0, 20.0, 0.0),
                            child: PinCodeTextField(
                              autoDisposeControllers: false,
                              appContext: context,
                              length: 6,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              enableActiveFill: false,
                              autoFocus: true,
                              enablePinAutofill: true,
                              errorTextSpace: 16.0,
                              showCursor: false,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              obscureText: false,
                              hintCharacter: '-',
                              keyboardType: TextInputType.number,
                              pinTheme: PinTheme(
                                fieldHeight: 50.0,
                                fieldWidth: 50.0,
                                borderWidth: 2.0,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(14.0),
                                  bottomRight: Radius.circular(14.0),
                                  topLeft: Radius.circular(14.0),
                                  topRight: Radius.circular(14.0),
                                ),
                                shape: PinCodeFieldShape.box,
                                activeColor: const Color(0xFF149CE8),
                                inactiveColor: const Color(0xFFAEAEAE),
                                selectedColor: const Color(0xFFBBBBBB),
                              ),
                              controller: _model.pinCodeController,
                              onChanged: (value) {
                                if (value.length == 6) {
                                  // Automatically trigger OTP verification when the full code is entered
                                  _verifyOtp(value);
                                }
                              },
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: _model.pinCodeControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.79, 1.13),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (_model.timerMilliseconds == 0) {
                                      final phoneNumberVal =
                                          FFAppState().Phonenumber;
                                      print('Phone number stored in FFAppState: ${FFAppState().Phonenumber}');
                                      if (phoneNumberVal == null ||
                                          phoneNumberVal.isEmpty ||
                                          !phoneNumberVal.startsWith('+')) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                                'Phone Number is required and has to start with +.'),
                                          ),
                                        );
                                        return;
                                      }
                                      await authManager.beginPhoneAuth(
                                        context: context,
                                        phoneNumber: phoneNumberVal,
                                        onCodeSent: (context) async {
                                          context.goNamedAuth(
                                            'otp',
                                            context.mounted,
                                            ignoreRedirect: true,
                                          );
                                        },
                                      );
                                    }
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'b247wlul' /* Resend code in             s */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 14,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.83, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: FlutterFlowTimer(
                                  initialTime: _model.timerInitialTimeMs,
                                  getDisplayTime: (value) =>
                                      StopWatchTimer.getDisplayTime(
                                        value,
                                        hours: false,
                                        milliSecond: false,
                                      ),
                                  controller: _model.timerController,
                                  updateStateInterval:
                                  const Duration(milliseconds: 1000),
                                  onChanged:
                                      (value, displayTime, shouldUpdate) {
                                    _model.timerMilliseconds = value;
                                    _model.timerValue = displayTime;
                                    if (shouldUpdate) safeSetState(() {});
                                  },
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                    fontFamily: 'Montserrat',
                                    color: const Color(0xFF149CE8),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    lineHeight: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (_model.timerMilliseconds != 0)
                          const Align(
                            alignment: AlignmentDirectional(0.0, -0.5),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [],
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
                    padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        final smsCodeVal = _model.pinCodeController!.text;

                        if (smsCodeVal.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Enter SMS verification code.')),
                          );
                          return;
                        }

                        final phoneVerifiedUser = await authManager.verifySmsCode(
                          context: context,
                          smsCode: smsCodeVal,
                        );

                        if (phoneVerifiedUser == null) {
                          return;
                        }

                        final userId = FirebaseAuth.instance.currentUser?.uid;

                        if (userId == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Unable to fetch user ID. Please try again.')),
                          );
                          return;
                        }

                        try {
                          final deliveryDoc = await FirebaseFirestore.instance
                              .collection('delivery')
                              .doc(userId)
                              .get();

                          if (deliveryDoc.exists) {
                            final data = deliveryDoc.data() as Map<String, dynamic>;
                            final status = data['Status'] ?? 'Not Approved';

                            if (status == 'Approved') {
                              context.replaceNamed('orderspage');
                            } else {
                              context.replaceNamed('companyapproval');
                            }
                          } else {
                            context.replaceNamed('ChooseType');
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error: ${e.toString()}')),
                          );
                        }
                      },
                      text: 'Login',
                      options: FFButtonOptions(
                        width: 390.0,
                        height: 60.0,
                        color: const Color(0xFFFDA900),
                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 15.0,
                          letterSpacing: 0.0,
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
