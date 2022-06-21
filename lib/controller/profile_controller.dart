import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/images.dart';

class ProfileController extends GetxController{


@override
void onInit() {
    // TODO: implement onInit
    setTextField();

    super.onInit();
  }

@override
void onClose() {
    // TODO: implement onClose
      //didChangeDependencies();
    super.onClose();
  }


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  
  setTextField(){
    nameController.text="AHMAD KHAN";
    emailController.text="ahmad123@gmail.com";
     phoneController.text="3141234567";
          addressController.text="Swat shamozai rangila";

  }

  File image;
  final picker = ImagePicker();


 void showPicker(context) {
   final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
              child: Wrap(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:Padding(padding: EdgeInsets.only(top:height*0.02,right:width*0.05 ),
                    child:ImageIcon(AssetImage(ConstImage.closeimage),
                    size: height*0.02,)), ),
              ),
                  
                   

              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Gallery"),
                onTap: () {
                  imageFromGallery();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title:const Text("Camera"),
                onTap: () {
                  imageFromCamera();
                  Navigator.pop(context);
                },
              ),
            ],
          ));
        });
  }

  Future imageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
 
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    
  }

  Future imageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    update();
  }



}