import '/flutter_flow/flutter_flow_util.dart';
import 'create_advance_booking2_widget.dart' show CreateAdvanceBooking2Widget;
import 'package:flutter/material.dart';

class CreateAdvanceBooking2Model
    extends FlutterFlowModel<CreateAdvanceBooking2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - showDatepicker] action in Button widget.
  String? datepicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
