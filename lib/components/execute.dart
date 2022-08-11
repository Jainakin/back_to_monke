import 'package:back_to_monke/constants.dart';
import 'mint.dart';
import 'jsonCreator.dart';
import 'package:flutter_ipfs/src/service/image_picker.dart';
import 'package:back_to_monke/components/test_picker.dart';


class Exe {
  void main() {
    // customFields obj0 = customFields('B.tech', "CSE", "BU", "2025");
    // Jsonexample obj1 = Jsonexample('Amee Madhani', 'Hackaccino Demonstration', obj0);
    // obj1.toJson();
    // UploadMeta().mintuploadMetaDataToIPFS();
    MintIPFS().mintFromIPFS();
  }
}