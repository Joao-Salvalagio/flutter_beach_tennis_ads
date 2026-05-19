import 'dart:convert';

import 'package:flutter_beachup/models/club_model.dart';
import 'package:http/http.dart' as http;

class ClubService {
  final String baseUrl = "https://mocki.io/v1/51f3adb6-fffb-4b2b-981f-7b65e9c1322d";

  Future<List<ClubModel>> getClubs() async{
    var response = await http.get(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"}
    );

    if(response.statusCode >= 200 && response.statusCode < 400){
        List<dynamic> jsonList = jsonDecode(response.body);
    }
  }
}