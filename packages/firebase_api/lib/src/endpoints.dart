part of 'firebase_api.dart';

class Store {
  const Store({
    required FirebaseFirestore store,
  }) : _store = store;
  final FirebaseFirestore _store;

  /// Get Reference to firebase firestore instance
  FirebaseFirestore get store => _store;

  /// Collection Reference for user_data
  /// endpoint => /user_data
  CollectionReference get userDataCollection => _store.collection('user_data');

  /// Document Reference for user data
  /// endpoint => /user_data/{[uid]}
  /// [uid] : the user id of the user
  DocumentReference userDataDocument(String uid) => userDataCollection.doc(uid);

  /// Temporary User Data Collection
  /// User Data gets temporary stored in this collection until complete sign is confirmed
  /// After confirmation user_data gets stored in proper collection
  CollectionReference get tempUserDataCollection =>
      _store.collection('temp_user_data');
}
