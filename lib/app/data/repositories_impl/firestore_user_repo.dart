import 'dart:typed_data';

import 'package:titans_crypto/app/data/models/user_personal_inf.dart';
import 'package:titans_crypto/app/data/notification/firebase_notification.dart';
import 'package:titans_crypto/app/data/user/firebase_storage.dart';
import 'package:titans_crypto/app/data/user/firestore_user_info.dart';
import 'package:titans_crypto/app/domain/repositories/user_repository.dart';

bool isThatMobile = true;

class FirebaseUserRepoImpl implements FirestoreUserRepository {
  @override
  Future<void> addNewUser(UserPersonalInfo newUserInfo) async {
    try {
      await FirestoreUser.createUser(newUserInfo);
      await FireStoreNotification.createNewDeviceToken(
          userId: newUserInfo.userId, myPersonalInfo: newUserInfo);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<UserPersonalInfo> getPersonalInfo(
      {required String userId, bool getDeviceToken = false}) async {
    try {
      UserPersonalInfo myPersonalInfo = await FirestoreUser.getUserInfo(userId);
      if (isThatMobile && getDeviceToken) {
        UserPersonalInfo updateInfo =
            await FireStoreNotification.createNewDeviceToken(
                userId: userId, myPersonalInfo: myPersonalInfo);
        myPersonalInfo = updateInfo;
      }
      return myPersonalInfo;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<UserPersonalInfo> updateUserInfo(
      {required UserPersonalInfo userInfo}) async {
    try {
      await FirestoreUser.updateUserInfo(userInfo);
      return getPersonalInfo(userId: userInfo.userId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<String> uploadProfileImage(
      {required Uint8List photo,
      required String userId,
      required String previousImageUrl}) async {
    try {
      String imageUrl = await FirebaseStoragee.uploadData(
          data: photo, folderName: 'personalImage');
      await FirestoreUser.updateProfileImage(
          imageUrl: imageUrl, userId: userId);
      await FirebaseStoragee.deleteImage(previousImageUrl);
      return imageUrl;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// [fieldName] , [userUid] in case one of this users not exist, it will be deleted from the list in fireStore

  // @override
  // Future<List<UserPersonalInfo>> getSpecificUsersInfo({
  //   required List<dynamic> usersIds,
  // }) async {
  //   try {
  //     return await FirestoreUser.getSpecificUsersInfo(usersIds: usersIds);
  //   } catch (e) {
  //     return Future.error(e.toString());
  //   }
  // }

  // @override
  // Stream<UserPersonalInfo> getMyPersonalInfo() =>
  //     FirestoreUser.getMyPersonalInfoInReelTime();

  @override
  Stream<List<UserPersonalInfo>> getAllUsers() => FirestoreUser.getAllUsers();
}
