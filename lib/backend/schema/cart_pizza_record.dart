import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartPizzaRecord extends FirestoreRecord {
  CartPizzaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pizzaId" field.
  DocumentReference? _pizzaId;
  DocumentReference? get pizzaId => _pizzaId;
  bool hasPizzaId() => _pizzaId != null;

  // "crust" field.
  String? _crust;
  String get crust => _crust ?? '';
  bool hasCrust() => _crust != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "toppings" field.
  List<String>? _toppings;
  List<String> get toppings => _toppings ?? const [];
  bool hasToppings() => _toppings != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  void _initializeFields() {
    _pizzaId = snapshotData['pizzaId'] as DocumentReference?;
    _crust = snapshotData['crust'] as String?;
    _size = snapshotData['size'] as String?;
    _toppings = getDataList(snapshotData['toppings']);
    _quantity = castToType<int>(snapshotData['quantity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CartPizza');

  static Stream<CartPizzaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartPizzaRecord.fromSnapshot(s));

  static Future<CartPizzaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartPizzaRecord.fromSnapshot(s));

  static CartPizzaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartPizzaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartPizzaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartPizzaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartPizzaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartPizzaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartPizzaRecordData({
  DocumentReference? pizzaId,
  String? crust,
  String? size,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pizzaId': pizzaId,
      'crust': crust,
      'size': size,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartPizzaRecordDocumentEquality implements Equality<CartPizzaRecord> {
  const CartPizzaRecordDocumentEquality();

  @override
  bool equals(CartPizzaRecord? e1, CartPizzaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pizzaId == e2?.pizzaId &&
        e1?.crust == e2?.crust &&
        e1?.size == e2?.size &&
        listEquality.equals(e1?.toppings, e2?.toppings) &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(CartPizzaRecord? e) => const ListEquality()
      .hash([e?.pizzaId, e?.crust, e?.size, e?.toppings, e?.quantity]);

  @override
  bool isValidKey(Object? o) => o is CartPizzaRecord;
}
