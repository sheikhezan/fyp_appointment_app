import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/widgets/button_widget.dart';
import 'package:fyp/widgets/ui.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PatientView extends StatefulWidget {
  const PatientView({
    super.key,
  });

  @override
  State<PatientView> createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  File? imageFile;

  TextEditingController fullNamecontrolller = TextEditingController();

  void selectImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      cropimagee(pickedFile);
    }
  }

  void cropimagee(XFile file) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: file.path,
      compressQuality: 20,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
    );
    if (croppedFile != null) {
      setState(() {
        imageFile = File(croppedFile.path); // Convert CroppedFile to File
      });
    }
  }

  void showPhotoOption() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Upload Profile Picture"),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  selectImage(ImageSource.gallery);
                },
                leading: const Icon(Icons.photo_library_outlined),
                title: const Text("Select from Gallery"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  selectImage(ImageSource.camera);
                },
                leading: const Icon(Icons.camera),
                title: const Text("Select from Camera"),
              ),
            ]),
          );
        });
  }

  void checkValues() {
    String fullname = fullNamecontrolller.text.trim();
    if (fullname == "" || imageFile == null) {
      print("please fill all the fields");
    } else {
      // uploadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
            Uitemplate(),
            Column(
              children: [
                CupertinoButton(
                  onPressed: () {
                    showPhotoOption();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          (imageFile != null) ? FileImage(imageFile!) : null,
                      child: (imageFile == null)
                          ? const Icon(
                              Icons.person,
                              size: 60,
                            )
                          : null,
                    ),
                  ),
                ),
                Text(
                    'Patient Details',
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                  child: TextField(
                    // controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: 'Full Name',
                    ),
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: TextField(
                    // controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: 'Phone Number',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    // controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: 'CNIC Number',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    checkValues();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 20),
                    child: FadeInUp(
                       duration: const Duration(milliseconds: 1200),
                      child: ButtonWidget(textt:"Submit",)),
                  )
                ),
              ],
            ),
          ])),
    );
  }
}
