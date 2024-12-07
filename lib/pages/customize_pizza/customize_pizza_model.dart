import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialog_save_pizza_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'customize_pizza_widget.dart' show CustomizePizzaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomizePizzaModel extends FlutterFlowModel<CustomizePizzaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Crust_RadioButton widget.
  FormFieldController<String>? crustRadioButtonValueController;
  // State field(s) for Size_RadioButton widget.
  FormFieldController<String>? sizeRadioButtonValueController;
  // State field(s) for Toppings_CheckBox widget.
  FormFieldController<List<String>>? toppingsCheckBoxValueController;
  List<String>? get toppingsCheckBoxValues =>
      toppingsCheckBoxValueController?.value;
  set toppingsCheckBoxValues(List<String>? v) =>
      toppingsCheckBoxValueController?.value = v;

  // State field(s) for Quantity_CountController widget.
  int? quantityCountControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CartPizzaRecord? cartPizzaItem;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CheckoutRecord? ch;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get crustRadioButtonValue => crustRadioButtonValueController?.value;
  String? get sizeRadioButtonValue => sizeRadioButtonValueController?.value;
}
