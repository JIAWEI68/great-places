import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/great_food.dart';

class FirestoreService{
  addGreatFood(foodName, storeName, imageUrl) {
    return FirebaseFirestore.instance.collection('great-food').add({'foodName': foodName, 'storeName': storeName, 'imageUrl':
        imageUrl, 'dateAdded' : DateTime.now()});
}
Stream<List<GreatFood>> getAllGreatFood() {
  return FirebaseFirestore.instance.collection('great-food').orderBy('dateAdded', descending: true)
      .snapshots().map((event) => event.docs.map((doc) =>
      GreatFood.fromMap(doc.data(), doc.id))
      .toList());
}
}



