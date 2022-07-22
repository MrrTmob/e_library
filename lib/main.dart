import 'package:amplify_api/amplify_api.dart';
import 'package:e_library/amplifyconfiguration.dart';
import 'package:e_library/models/ModelProvider.dart';
import 'package:e_library/screen/home.dart';
import 'package:e_library/screen/upload.dart';
import 'package:e_library/utils.dart';
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _configureAmplify();
  }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          // backgroundColor: primaryColor,
          body: Upload()),
    );
  }
}

Future<void> _configureAmplify() async {
  // Add these lines, to include Auth and Storage plugins.
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
