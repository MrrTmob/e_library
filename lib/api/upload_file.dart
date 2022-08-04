import 'dart:io';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:e_library/utils.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

Future<void> uploadFile(String path, context) async {
  ProgressDialog pd = ProgressDialog(context: context);
  pd.show(
      max: 100,
      msg: "Uploading...",
      progressBgColor: primaryColor,
      elevation: 5);
  // Select a file from the device
  final key = DateTime.now().toString();
  final file = File(path);
  try {
    await Amplify.Storage.uploadFile(
        local: file,
        key: key,
        onProgress: (progress) {
          pd.update(value: (progress.getFractionCompleted() * 100).toInt());
        },
        options: S3UploadFileOptions(accessLevel: StorageAccessLevel.private));
  } on StorageException catch (e) {
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
