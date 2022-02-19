import 'dart:js';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:vkonnect/screens/Landingpage/landingUtils.dart';
import 'package:vkonnect/services/Authentication.dart';

class FirebaseOperations with ChangeNotifier {
  UploadTask imageUploadTask;
  Future uploadUserAvatar(BuildContext context) async {
    Reference imageReference = FirebaseStorage.instance.ref().child(
        'userProfileAvatar/${Provider.of<LandingUtils>(context, listen: false).getUserAvatar.path}/${TimeOfDay.now()}');
    imageUploadTask = imageReference.putFile(
        Provider.of<LandingUtils>(context, listen: false).getUserAvatar);
    await imageUploadTask.whenComplete(() {
      print('Image Uploaded');
    });
    imageReference.getDownloadURL().then((url) {
      Provider.of<LandingUtils>(context, listen: false).userAvatarUrl =
          url.toString();
      print(
          'the user profile avatar url =>${Provider.of<LandingUtils>(context, listen: false).userAvatarUrl = url.toString()}');
      notifyListeners();
    });
  }

  Future createUserCollection(BuildContext context,dynamic data) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(Provider.of<Authentication>(context, listen: false).getUserUid)
        .set(data);
  }
}
