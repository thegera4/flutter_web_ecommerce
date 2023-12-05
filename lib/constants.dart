import 'package:flutter/cupertino.dart';

//color
const kPrimaryColor = Color(0xff654ce6);
const kSecondaryColor = Color(0xffa594ff);
const kDarkblueColor = Color(0xff25396f);
const kgreyColor = Color(0xfff1f1f1);
const kDarkgreyColor = Color(0xff8d91a7);
const kWhiteColor = Color(0xffffffff);

const kDefaultPadding = 20.0;
const kMaxWidth = 1232.0;
const kDefaultDuration = Duration(milliseconds: 250);

//product shadow
final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 10),
  spreadRadius: 5,
  blurRadius: 20,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);


//auth
const String loginOk = "User logged in successfully!";
const String registerOk = "Account created successfully!";
const String customRegisterOk = "User created successfully!";
const String logoutOk = "Logged out successfully!";
const String logoutError = "Error during logout!";
const String cookieName = "jwt";
const String localHost = "https://jwt-auth-api-production-2459.up.railway.app";

//texts
const String home = "Home";
const String products = "Products";
