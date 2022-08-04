import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:e_library/screen/verify.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

Future<void> signUpUser(context, String email, String username,
    String phoneNumber, String password) async {
  ProgressDialog pd = ProgressDialog(context: context);
  pd.show(max: 100, msg: "Signing up...", hideValue: true);
  try {
    final userAttributes = <CognitoUserAttributeKey, String>{
      CognitoUserAttributeKey.email: email,
      CognitoUserAttributeKey.phoneNumber: "+855$phoneNumber",

      // additional attributes as needed
    };
    await Amplify.Auth.signUp(
      username: username,
      password: password,
      options: CognitoSignUpOptions(userAttributes: userAttributes),
    ).then((value) => pd.close()).then((value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Verify(
                  username: username,
                  password: password,
                  phoneNumber: phoneNumber,
                ))));
  } on AuthException catch (e) {
    pd.close();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.grey,
        duration: const Duration(seconds: 1),
        margin: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: MediaQuery.of(context).size.width * 0.15,
        ),
        elevation: 1.0,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        content: Wrap(
          children: [
            Center(
              child: Text(
                e.message,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
