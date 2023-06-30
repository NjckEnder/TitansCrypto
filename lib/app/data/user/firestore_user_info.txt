import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:titans_crypto/app/data/models/user_personal_inf.dart';

class FirestoreUser {
  static final _fireStoreUserCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> createUser(UserPersonalInfo newUserInfo) async {
    await _fireStoreUserCollection
        .doc(newUserInfo.userId)
        .set(newUserInfo.toMap());
  }

  static Future<void> sendNotification() async {}
  // {required String userId, required Message message}) async {
  // DocumentReference<Map<String, dynamic>> userCollection =
  //     _fireStoreUserCollection.doc(userId);
  // if (userId != myPersonalId) {
  //   userCollection.update({"numberOfNewMessages": FieldValue.increment(1)});
  //   UserPersonalInfo receiverInfo = await getUserInfo(userId);
  //   String token = receiverInfo.deviceToken;
  //   if (token.isNotEmpty) {
  //     String body = message.message.isNotEmpty
  //         ? message.message
  //         : (message.isThatImage
  //             ? "Send image"
  //             : (message.isThatPost
  //                 ? "Share with you a post"
  //                 : "Send message"));
  //     PushNotification detail = PushNotification(
  //       title: message.senderInfo?.name ?? "A user",
  //       body: body,
  //       deviceToken: token,
  //       isThatGroupChat: message.isThatGroup,
  //       notificationRoute: "message",
  //       routeParameterId:
  //           message.isThatGroup ? message.chatOfGroupId : message.senderId,
  //     );
  //     await DeviceNotification.sendPopupNotification(
  //         pushNotification: detail);
  //   }
  // }
  // }

  static Future<UserPersonalInfo> getUserInfo(dynamic userId) async {
    DocumentSnapshot<Map<String, dynamic>> snap =
        await _fireStoreUserCollection.doc(userId).get();
    if (snap.exists) {
      return UserPersonalInfo.fromDocSnap(snap.data());
    } else {
      return Future.error('userNotExist');
      // null;
    }
  }

  static Stream<List<UserPersonalInfo>> getAllUsers() {
    Stream<QuerySnapshot<Map<String, dynamic>>> snapshots =
        _fireStoreUserCollection.snapshots();
    return snapshots.map((snapshot) {
      List<UserPersonalInfo> usersInfo = [];
      for (final doc in snapshot.docs) {
        UserPersonalInfo userInfo = UserPersonalInfo.fromDocSnap(doc.data());
        if (userInfo.userId != myPersonalId) usersInfo.add(userInfo);
      }
      return usersInfo;
    });
  }

  static updateProfileImage(
      {required String imageUrl, required String userId}) async {
    await _fireStoreUserCollection.doc(userId).update({
      "profileImageUrl": imageUrl,
    });
  }

  static updateUserInfo(UserPersonalInfo userInfo) async {
    await _fireStoreUserCollection
        .doc(userInfo.userId)
        .update(userInfo.toMap());
  }

  static Future<UserPersonalInfo?> getUserFromUserName(
      {required String userName}) async {
    UserPersonalInfo? userPersonalInfo;
    await _fireStoreUserCollection
        .where('userName', isEqualTo: userName)
        .get()
        .then((snapshot) {
      if (snapshot.docs.isNotEmpty) {
        QueryDocumentSnapshot<Map<String, dynamic>> snap = snapshot.docs[0];
        userPersonalInfo = UserPersonalInfo.fromDocSnap(snap.data());
      }
    });
    return userPersonalInfo;
  }
}

String myPersonalId = '';
