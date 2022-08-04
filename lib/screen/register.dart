import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:e_library/auth/sign_up_user.dart';
import 'package:e_library/screen/verify.dart';
import 'package:e_library/utils.dart';
import 'package:e_library/widgets/cutom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.75);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: primaryColor, title: const Text("Register")),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: buildTextField("Email", emailController),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: buildTextField("Username", usernameController),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: buildTextField("Phone number", phonenumberController),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: buildPasswordTextField("Password", passwordController),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        primary: primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    onPressed: () async {
                      await Amplify.Auth.signOut().then((value) {
                        signUpUser(
                            context,
                            emailController.text,
                            usernameController.text,
                            phonenumberController.text,
                            passwordController.text);
                      });
                    },
                    child: const Text(
                      "Register",
                      style: style,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
