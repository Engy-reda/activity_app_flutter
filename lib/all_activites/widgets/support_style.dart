import 'package:flutter/material.dart';

class SupportStyle {
  static TextStyle bold() {
    return TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  }

  static TextStyle simeBold() {
    return TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey.shade700,
    );
  }

  static TextStyle light() {
    return TextStyle(fontSize: 12.0, color: Colors.grey[600]);
  }

  static TextStyle simeLight() {
    return TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      // color: Colors.grey[600],
      color: Colors.blue[800],
    );
  }

  static TextStyle simeBoldGrey() {
    return TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey.shade700,
      fontFamily: 'Poppins',
    );
  }
}
