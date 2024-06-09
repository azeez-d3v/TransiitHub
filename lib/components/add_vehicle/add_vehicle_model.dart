import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_vehicle_widget.dart' show AddVehicleWidget;
import 'package:flutter/material.dart';

class AddVehicleModel extends FlutterFlowModel<AddVehicleWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for plate widget.
  FocusNode? plateFocusNode;
  TextEditingController? plateTextController;
  String? Function(BuildContext, String?)? plateTextControllerValidator;
  // State field(s) for unittype widget.
  String? unittypeValue;
  FormFieldController<String>? unittypeValueController;
  // State field(s) for drivername widget.
  FocusNode? drivernameFocusNode;
  TextEditingController? drivernameTextController;
  String? Function(BuildContext, String?)? drivernameTextControllerValidator;
  // State field(s) for drivercontact widget.
  FocusNode? drivercontactFocusNode;
  TextEditingController? drivercontactTextController;
  String? Function(BuildContext, String?)? drivercontactTextControllerValidator;
  // State field(s) for helpername widget.
  FocusNode? helpernameFocusNode;
  TextEditingController? helpernameTextController;
  String? Function(BuildContext, String?)? helpernameTextControllerValidator;
  // State field(s) for helpercontact widget.
  FocusNode? helpercontactFocusNode;
  TextEditingController? helpercontactTextController;
  String? Function(BuildContext, String?)? helpercontactTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    plateFocusNode?.dispose();
    plateTextController?.dispose();

    drivernameFocusNode?.dispose();
    drivernameTextController?.dispose();

    drivercontactFocusNode?.dispose();
    drivercontactTextController?.dispose();

    helpernameFocusNode?.dispose();
    helpernameTextController?.dispose();

    helpercontactFocusNode?.dispose();
    helpercontactTextController?.dispose();
  }
}
