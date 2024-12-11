import '/flutter_flow/flutter_flow_util.dart';
import 'driverlicense_widget.dart' show DriverlicenseWidget;
import 'package:flutter/material.dart';

class DriverlicenseModel extends FlutterFlowModel<DriverlicenseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? uploadedFileUrl;
  String? uploadedFileName;


  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
