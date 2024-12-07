import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckoutRecord extends FirestoreRecord {
  CheckoutRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  bool hasTax() => _tax != null;

  // "shipping" field.
  double? _shipping;
  double get shipping => _shipping ?? 0.0;
  bool hasShipping() => _shipping != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "cartPizzaId" field.
  DocumentReference? _cartPizzaId;
  DocumentReference? get cartPizzaId => _cartPizzaId;
  bool hasCartPizzaId() => _cartPizzaId != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _quantity = castToType<int>(snapshotData['quantity']);
    _tax = castToType<double>(snapshotData['tax']);
    _shipping = castToType<double>(snapshotData['shipping']);
    _total = castToType<double>(snapshotData['total']);
    _cartPizzaId = snapshotData['cartPizzaId'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Checkout');

  static Stream<CheckoutRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CheckoutRecord.fromSnapshot(s));

  static Future<CheckoutRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CheckoutRecord.fromSnapshot(s));

  static CheckoutRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CheckoutRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CheckoutRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CheckoutRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CheckoutRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CheckoutRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCheckoutRecordData({
  int? quantity,
  double? tax,
  double? shipping,
  double? total,
  DocumentReference? cartPizzaId,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quantity': quantity,
      'tax': tax,
      'shipping': shipping,
      'total': total,
      'cartPizzaId': cartPizzaId,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class CheckoutRecordDocumentEquality implements Equality<CheckoutRecord> {
  const CheckoutRecordDocumentEquality();

  @override
  bool equals(CheckoutRecord? e1, CheckoutRecord? e2) {
    return e1?.quantity == e2?.quantity &&
        e1?.tax == e2?.tax &&
        e1?.shipping == e2?.shipping &&
        e1?.total == e2?.total &&
        e1?.cartPizzaId == e2?.cartPizzaId &&
        e1?.date == e2?.date;
  }

  @override
  int hash(CheckoutRecord? e) => const ListEquality().hash(
      [e?.quantity, e?.tax, e?.shipping, e?.total, e?.cartPizzaId, e?.date]);

  @override
  bool isValidKey(Object? o) => o is CheckoutRecord;
}
