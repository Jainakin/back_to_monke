import 'dart:convert';
import 'dart:collection';
import 'package:back_to_monke/constants.dart';

// String imageURI = imageURIList[0];

class customFields{
  String course = 'B.tech';
  String specialization = "CSE";
  String university = "BU";
  String class_of = "2025";
  customFields(this.course,this.specialization,this.university,this.class_of);
  Map<String,dynamic>toJson()=>{
    'course':course,
    'specialization':specialization,
    'university':university,
    'class_of':class_of
  };
}

class Jsonexample {
  String name = 'Amee Madhani';
  String description = 'Hackaccino Demonstration';
  String image = "ipfs://";
  customFields custom_Fields;

  Jsonexample(this.name, this.description, this.custom_Fields);

  String toJson() { // use this function in main
    Map<String,dynamic>result=HashMap();


    result.addAll({
      'name': name,
      'description': description,
      'image': "ipfs://",
      'custom_Fields': custom_Fields.toJson(),
    });
    jsonList.add(jsonEncode(result));
    return jsonEncode(result);
  }
}