import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:parking_auto/Screen/login.dart';


class RegisterController extends GetxController{
  //TextEditingController firstNameController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  Future registerUser() async {
  
    //var phoneCurrent;
    //const url ='https://smart-parking-server-dev.azurewebsites.net/api/auth/local/register';
    //const url = 'http://localhost:3000/pub/register';

    //const url = 'http://192.168.0.11:3000/pub/register';

    //const url = "https://file.hungtuan.me/pub/register";
    const url = "https://server.smartparking.site/api/register";
    try {
       Map<String, String> headers = {
      "Content-type": "application/json"
      };
    var response = await http.post(Uri.parse(url),
        headers: headers,
        body: jsonEncode({
          // "firstName": firstNameController.text,
           "fullName": fullNameController.text,
          "phoneNumber": phoneController.text,
          "password": passwordController.text,
        }));
        print("phone: " + phoneController.text);
    if (response.statusCode == 200) {
      //var registerArr = json.decode(response.body);
      
      //SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.remove('token');
      // final keyToken = 'token';
      // final valueToken = strtoken;
      //save token
      //prefs.setString(keyToken, valueToken);

      // phoneCurrent = phoneController.text;
      // final keyPhoneCurrent = 'phoneCurrent';
      // final valuePhoneCurrent = phoneCurrent;
       //save phone login current
      // prefs.setString(keyPhoneCurrent, valuePhoneCurrent);

      Fluttertoast.showToast(
          msg: "You are register in successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
          Get.to(LoginWithPhone());
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => LoginWithPhone()));
    } else if (response.statusCode == 400) {
      Fluttertoast.showToast(
          msg: "User already exists with same phoneNumber",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Error",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
     } catch (e) {
      print(e);
    }
  }
}
