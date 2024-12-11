import '/flutter_flow/flutter_flow_util.dart';
import 'persondriverdocument_widget.dart' show PersondriverdocumentWidget;
import 'package:flutter/material.dart';

class PersondriverdocumentModel
    extends FlutterFlowModel<PersondriverdocumentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
