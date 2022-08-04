import 'package:e_library/utils.dart';
import 'package:flutter/material.dart';


TextField buildTextField(String hintText, TextEditingController controller) {
  return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: secondaryColor,
        filled: true,
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Color(0xFF6E7191), letterSpacing: 1.2),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 26.0, vertical: 16.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.transparent)),
      ));
}
TextField buildPasswordTextField(String hintText, TextEditingController controller) {
  return TextField(
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: secondaryColor,
        filled: true,
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Color(0xFF6E7191), letterSpacing: 1.2),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 26.0, vertical: 16.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.transparent)),
      ));
}