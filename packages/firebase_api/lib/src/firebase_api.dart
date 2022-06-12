import 'package:cloud_firestore/cloud_firestore.dart';

part 'endpoints.dart';

class StoreApi {
  StoreApi({
    required FirebaseFirestore firebaseFirestore,
  }) : _store = Store(store: firebaseFirestore);

  final Store _store;

  /// Set User Data in the store
  /// [userData] : userData to be saved
  Future<void> setUserData() async {}

  /// Copy User Data from temp
  /// [storePath] : copy user data from temp location to concrete location
  Future<void> copyFromTemp(String storePath) async {}
}
