import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'saved_inventions_widget.dart' show SavedInventionsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SavedInventionsModel extends FlutterFlowModel<SavedInventionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in SavedInventions widget.
  List<FavePizzaRecord>? savedPizzaItems;
  // Stores action output result for [Backend Call - Create Document] action in menuItem widget.
  CartPizzaRecord? cartPizzaItems;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
