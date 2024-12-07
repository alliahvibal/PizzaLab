import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PizzasRecord extends FirestoreRecord {
  PizzasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pizzaName" field.
  String? _pizzaName;
  String get pizzaName => _pizzaName ?? '';
  bool hasPizzaName() => _pizzaName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "pizzaImg" field.
  String? _pizzaImg;
  String get pizzaImg => _pizzaImg ?? '';
  bool hasPizzaImg() => _pizzaImg != null;

  void _initializeFields() {
    _pizzaName = snapshotData['pizzaName'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _pizzaImg = snapshotData['pizzaImg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pizzas');

  static Stream<PizzasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PizzasRecord.fromSnapshot(s));

  static Future<PizzasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PizzasRecord.fromSnapshot(s));

  static PizzasRecord fromSnapshot(DocumentSnapshot snapshot) => PizzasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PizzasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PizzasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PizzasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PizzasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPizzasRecordData({
  String? pizzaName,
  String? description,
  int? price,
  String? pizzaImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'pizzaImg': pizzaImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class PizzasRecordDocumentEquality implements Equality<PizzasRecord> {
  const PizzasRecordDocumentEquality();

  @override
  bool equals(PizzasRecord? e1, PizzasRecord? e2) {
    return e1?.pizzaName == e2?.pizzaName &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.pizzaImg == e2?.pizzaImg;
  }

  @override
  int hash(PizzasRecord? e) => const ListEquality()
      .hash([e?.pizzaName, e?.description, e?.price, e?.pizzaImg]);

  @override
  bool isValidKey(Object? o) => o is PizzasRecord;
}
