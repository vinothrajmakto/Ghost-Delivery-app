import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_type_widget.dart' show ChooseTypeWidget;
import 'package:flutter/material.dart';

class ChooseTypeModel extends FlutterFlowModel<ChooseTypeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for company widget.
  FormFieldController<String>? companyValueController;
  // State field(s) for Individual widget.
  FormFieldController<String>? individualValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get companyValue => companyValueController?.value;
  String? get individualValue => individualValueController?.value;
}
