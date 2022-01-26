import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'base_storage_repo.dart';

class StorageRepo extends BaseStorageRepo{
  final firebase_storage = FirebaseStorage.instance;
  @override
  Future<void> uploadImage(XFile image) async {
    try{
      await firebase_storage.ref('user_0/${image.name}').putFile(File(image.path));
    }catch(e){}
  }

}