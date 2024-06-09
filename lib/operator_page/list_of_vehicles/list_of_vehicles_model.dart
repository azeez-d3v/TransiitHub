import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_vehicles_widget.dart' show ListOfVehiclesWidget;
import 'package:flutter/material.dart';

class ListOfVehiclesModel extends FlutterFlowModel<ListOfVehiclesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
