import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color accentColor = Color(0xFF1c155b);
const Color whiteColor = Color(0xFFffffff);
const Color blackColor = Color(0xff333333);

const SystemUiOverlayStyle statusBarDark = SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark);
/////////////////////////////////
///   TEXT STYLES
////////////////////////////////


const Color bgColor = Color(0xffF4F7FA);
//  const Color primaryColor = Colors.green;
const Color primaryColor = Color(0xff44c662);
const Color white = Colors.white;
const Color darkText = Colors.black54;
const Color highlightColor = Colors.green;
const Color greyColor = Color(0xFFb1afaf);
const Color color959ca7 = Color(0xFF959ca7);


const logoStyle = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 30,
    color: Colors.black54,
    letterSpacing: 2);

const logoWhiteStyle = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 21,
    letterSpacing: 2,
    color: Colors.white);
const whiteText = TextStyle(color: Colors.white, fontFamily: 'Poppins');
const disabledText = TextStyle(color: Colors.grey, fontFamily: 'Poppins');
const contrastText = TextStyle(color: accentColor, fontFamily: 'Poppins');
const contrastTextBold = TextStyle(
    color: accentColor, fontFamily: 'Poppins', fontWeight: FontWeight.w600);

const h3 = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w800,
    fontFamily: 'Poppins');

const h4 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');

const h5 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');

const h6 = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');


const priceText = TextStyle(
    color: Colors.black,
    fontSize: 19,
    fontWeight: FontWeight.w800,
    fontFamily: 'Poppins');

const foodNameText = TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');

const tabLinkStyle =
TextStyle(fontWeight: FontWeight.w500);

const taglineText = TextStyle(color: Colors.grey, fontFamily: 'Poppins');
const categoryText = TextStyle(
    color: Color(0xff444444),
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');

const inputFieldTextStyle =
TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500);

const inputFieldHintTextStyle =
TextStyle(fontFamily: 'Poppins', color: Color(0xff444444));

const inputFieldPasswordTextStyle = TextStyle(
    fontFamily: 'Poppins', fontWeight: FontWeight.w500, letterSpacing: 3);

const inputFieldHintPaswordTextStyle = TextStyle(
    fontFamily: 'Poppins', color: Color(0xff444444), letterSpacing: 2);

///////////////////////////////////
/// BOX DECORATION STYLES
//////////////////////////////////

const authPlateDecoration = BoxDecoration(
    color: white,
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(0, 0, 0, .1),
          blurRadius: 10,
          spreadRadius: 5,
          offset: Offset(0, 1))
    ],
    borderRadius: BorderRadiusDirectional.only(
        bottomEnd: Radius.circular(20), bottomStart: Radius.circular(20)));

/////////////////////////////////////
/// INPUT FIELD DECORATION STYLES
////////////////////////////////////

const inputFieldFocusedBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(
      color: primaryColor,
    ));

const inputFieldDefaultBorderStyle = OutlineInputBorder(
    gapPadding: 0, borderRadius: BorderRadius.all(Radius.circular(6)));
