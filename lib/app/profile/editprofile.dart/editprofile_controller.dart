import 'dart:io';

import 'package:garage_vendor/utils/image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';

class EditprofileController extends GetxController {
  static EditprofileController instance = Get.find();

  File? logo;
  File? cover;
  pickImageFromGallery(String imageName) async {
    final imageSelectorApi = ImageSelectorApi();

    final pickedImage = await imageSelectorApi.selectImageForCropper();
    if (pickedImage != null) {
      CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: pickedImage.path,
        uiSettings:
            uiSetting(androidTitle: 'Crop Image', iosTitle: 'Crop Image'),
      );
      if (croppedImage != null || croppedImage!.path.isNotEmpty) {
        switch (imageName) {
          case 'logo':
            logo = File(croppedImage.path);
            // logoError = '';
            update();
            break;
          case 'cover':
            cover = File(croppedImage.path);
            // coverError = '';
            update();

          default:
            break;
        }
      } else {
        return null;
      }
    }
  }
}
