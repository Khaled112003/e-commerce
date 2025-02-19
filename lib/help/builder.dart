import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class api {
  Future<dynamic> get({required String url,@required token}) async {
    Map<String,String> headers={};
    if (token != null){
          headers.addAll({'Authorization' : 'Bearer $token'});} 
    http.Response response = await http.get(Uri.parse(url),headers: headers);
     

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("there an errror ${response.statusCode}");
    }
  }

  Future<dynamic> post(
      {required String url2, @required dynamic body, @required token}) async {
        Map<String,String> headers={};
        headers.addAll({
          'Content-Type': 'multipart/form-data'
        });
        if (token != null){
          headers.addAll({'Authorization' : 'Bearer $token'});
        }
    http.Response response = await http.post(
      Uri.parse(url2),
      body: body,
      headers: headers
    );
    if ( response.statusCode== 200){
       Map<String,dynamic> data= jsonDecode(response.body);  
    }
    else{
      throw Exception("there an error with ${response.body} and status code ${response.statusCode}");
    }
  }


  Future<dynamic> put (
      {required String url2, @required dynamic body, @required token}) async {
        Map<String,String> headers={};
         headers.addAll({'Content-Type':'application/x-www-form-urlencoded'});
        if (token != null){
          headers.addAll({'Authorization' : 'Bearer $token'});
        }
    http.Response response = await http.post(
      Uri.parse(url2),
      body: body,
      headers: headers
    );
    if ( response.statusCode== 200){
       Map<String,dynamic> data= jsonDecode(response.body);  
    }
    else{
      throw Exception("there an error with ${response.body} and status code ${response.statusCode}");
    }
  }
}
