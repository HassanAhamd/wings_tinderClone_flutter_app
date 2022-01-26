import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wings_dating_app_flutter/storage/storage_repo.dart';

class CustomImageContainer extends StatelessWidget{
  CustomImageContainer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10,right: 10),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border(
              bottom: BorderSide(color: Theme.of(context).primaryColor,width: 1),
              top: BorderSide(color: Theme.of(context).primaryColor,width: 1),
              left: BorderSide(color: Theme.of(context).primaryColor,width: 1),
              right: BorderSide(color: Theme.of(context).primaryColor,width: 1)
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
            child: IconButton(
              icon: Icon(Icons.add_circle,color: Theme.of(context).primaryColor,),
              onPressed: () async{
              ImagePicker _picker = ImagePicker();
              final XFile? _image = await _picker.pickImage(source: ImageSource.gallery);
              if(_image == null){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No image selected.'),));
              } else{
                StorageRepo().uploadImage(_image);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Image Uploaded Sucessfully.'),));
              }
              },)),
      ),
    );
  }

}