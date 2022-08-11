import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:back_to_monke/constants.dart';

class UploadMeta {
  Future<String> mintuploadMetaDataToIPFS() async {

    final response = await http.post(
      Uri.parse('https://api.nftport.xyz/v0/metadata'),
      headers: {
        'Content-Type': "application/json",
        'Authorization': "d7fc4d8f-c4f3-4cf0-bdf4-b210454898db",
      },
      body: "{\"name\":\"Graduation Certificate\",\"description\":\"NFT Degree\",\"file_url\":\"ipfs://${imageURIList[0]}\",\"course\":\"B.tech\",\"specialization\":\"CSE\",\"University\":\"Bennett University\",\"class of\":\"2025\"}",
    );

    final data = jsonDecode(response.body);
    // print("printing response.body______________________________________:\n" + response.body);
    final hash = data["metadata_uri"];
    metaURIList.add(hash);
    print('meta uri ' + hash);
    print(data);
    print('meta uri list :' + metaURIList.toString());
    // print(hash);
    return hash;
    // return data;
  }
}