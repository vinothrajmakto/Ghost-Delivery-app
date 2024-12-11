import '/flutter_flow/flutter_flow_util.dart';
import 'businessregistrationcertificate_widget.dart'
    show BusinessregistrationcertificateWidget;
import 'package:flutter/material.dart';

class BusinessregistrationcertificateModel
    extends FlutterFlowModel<BusinessregistrationcertificateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
