import 'dart:io';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:file_picker/file_picker.dart';

Future<void> uploadFile(String path) async {
  // Select a file from the device
  final key = DateTime.now().toString();
  final file = File(path);
  try {
    final UploadFileResult result = await Amplify.Storage.uploadFile(
      local: file,
      key: key,
      onProgress: (progress) {
        print('Fraction completed: ${progress.getFractionCompleted()}');
      },
    );
    print('Successfully uploaded file: ${result.key}');
  } on StorageException catch (e) {
    print('Error uploading file: $e');
  }
}