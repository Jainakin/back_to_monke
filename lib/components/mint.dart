import 'dart:convert';
import 'package:back_to_monke/constants.dart';
import 'package:http/http.dart' as http;

class MintIPFS {
  Future<String> mintFromIPFS() async {

    // print(imageURIList);
    // print(metaURIList);
    // print(jsonList);

    final response = await http.post(
      Uri.parse('https://api.nftport.xyz/v0/mints/customizable'),
      headers: {
        'Content-Type': "application/json",
        'Authorization': "d7fc4d8f-c4f3-4cf0-bdf4-b210454898db",
      },
      body: "{\"chain\":\"rinkeby\",\"contract_address\":\"0x876ee767ED3491144Dd4f7b6aF09979314EC9eE4\",\"metadata_uri\":\"ipfs://${metaURIList[0]}\",\"mint_to_address\":\"0x3D8DaD19B01D3626a73d632081Bc3ddA36aF0fF1\"}",
    );

    final data = jsonDecode(response.body);
    final hash = data['transaction_hash'];
    print(data);
    // print("metaURI " + metaURIList[0]);
    // print("imageURI " + imageURIList[0]);
    return hash;
  }
}