import 'package:e_library/auth/confirm_user.dart';
import 'package:e_library/screen/login.dart';
import 'package:e_library/utils.dart';
import 'package:e_library/widgets/cutom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key, required this.username, required this.password, required this.phoneNumber}) : super(key: key);
final String username;
final String password;
final String phoneNumber;
  @override
  State<Verify> createState() => _VerifyState();
}


class _VerifyState extends State<Verify> {
  TextEditingController verifyController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    verifyController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.75);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Verify"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: buildTextField("Verify code", verifyController),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        primary: primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      confirmUser(context,widget.username, verifyController.text,widget.password,widget.phoneNumber);
                    },
                    child: const Text(
                      "Verify",
                      style: style,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
