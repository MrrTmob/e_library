import 'package:amplify_api/model_mutations.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:e_library/models/Author.dart';
import 'package:e_library/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

Future<void> confirmUser(context, String username, String code, String password,
    String phoneNumber) async {
  ProgressDialog pd = ProgressDialog(context: context);
  try {
    pd.show(max: 100, msg: "Verifying user", hideValue: true);
    await Amplify.Auth.confirmSignUp(username: username, confirmationCode: code)
        .then((value) async {
      await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
    }).then((value) async {
      await Amplify.Auth.fetchAuthSession(
        options: CognitoSessionOptions(getAWSCredentials: true),
      ).then((value) {
        String identityId = (value as CognitoAuthSession).identityId!;
        final item = Author(
            displayName: username,
            username: username,
            phoneNumber: "+855$phoneNumber",
            userId: identityId);
        final request = ModelMutations.create(item);
        Amplify.API.mutate(request: request).response;
      }).then((value) => pd.close()).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home())));
    });
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
