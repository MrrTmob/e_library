import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:e_library/screen/upload.dart';
import 'package:e_library/utils.dart';
import 'package:e_library/widgets/cutom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog pd = ProgressDialog(context: context);
    const TextStyle style = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.75);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: buildTextField("Username", usernameController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: buildPasswordTextField("Password", passwordController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                    Amplify.Auth.signOut();
                    pd.show(msg: "Logging in...",max: 100,hideValue: true);
                    try {
                      await Amplify.Auth.signIn(
                        username: usernameController.text,
                        password: passwordController.text,
                      ).then((value)  {
                        pd.close();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Upload()));});
                    } on AuthException catch (e) {
                      pd.close();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.grey,
                          duration:const Duration(seconds: 1),
                          margin: EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.15,
                          ),
                          elevation: 1.0,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                          content: Wrap(
                            children:  [
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
                  },
                  child: const Text(
                    "Login",
                    style: style,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
