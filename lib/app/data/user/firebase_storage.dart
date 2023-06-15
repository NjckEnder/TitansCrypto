import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';


class FirebaseStoragee{
  //  static Future<String> uploadFile({
  //   required String folderName,
  //   required File postFile,
  // }) async {
  //   final fileName = basename(postFile.path);
  //   final destination = 'files/$folderName/$fileName';
  //   final ref = firebase_storage.FirebaseStorage.instance.ref(destination);
  //   UploadTask uploadTask = ref.putFile(postFile);
  //   String fileOfPostUrl =
  //       await (await uploadTask.whenComplete(() {})).ref.getDownloadURL();
  //   return fileOfPostUrl;
  // }

  static Future<String> uploadData(
      {required String folderName, required Uint8List data}) async {
    final fileName = DateTime.now().toString();
    final destination = 'data/$folderName/$fileName';
    final ref = firebase_storage.FirebaseStorage.instance.ref(destination);
    UploadTask uploadTask = ref.putData(data);
    String fileOfPostUrl =
        await (await uploadTask.whenComplete(() {})).ref.getDownloadURL();
    return fileOfPostUrl;
  }

  
  static Future<void> deleteImage(String previousImage) async {
    String previousFile = Uri.decodeFull(basename(previousImage)).replaceAll(RegExp(r'(\?alt).*'), '');
    final Reference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(previousFile);
    await firebaseStorageRef.delete().then((value) {});
  }
}