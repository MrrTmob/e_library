import 'package:amplify_api/amplify_api.dart';
import 'package:e_library/amplifyconfiguration.dart';
import 'package:e_library/auth/is_user_signed_in.dart';
import 'package:e_library/models/ModelProvider.dart';
import 'package:e_library/screen/register.dart';
import 'package:e_library/screen/upload.dart';
import 'auth/is_user_signed_in.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isUserSignedIn = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _configureAmplify().then((value)async {
       _isUserSignedIn = await isUserSignedIn();
      
    }).then((value){
      setState(() {
        
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          // backgroundColor: primaryColor,
          body: _isUserSignedIn
              ? const Upload()
              : const Register()),
    );
  }
}

Future<void> _configureAmplify() async {
  final api = AmplifyAPI(modelProvider: ModelProvider.instance);
  final auth = AmplifyAuthCognito();
  final storage = AmplifyStorageS3();
  await Amplify.addPlugins([api, auth, storage]);
  try {
    await Amplify.configure(amplifyconfig);
  } on Exception catch (e) {
    print('Tried to configure Amplify and following error occurred: $e');
  }
}
