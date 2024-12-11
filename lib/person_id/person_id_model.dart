import '/flutter_flow/flutter_flow_util.dart';
import 'person_id_widget.dart' show PersonIdWidget;
import 'package:flutter/material.dart';

class PersonIdModel extends FlutterFlowModel<PersonIdWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
