import 'package:file_picker/file_picker.dart';

Future<PlatformFile?> pickFile() async {
  try {
    PlatformFile? path =
        (await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['pdf']))
            ?.files
            .first;
    return path;
  } catch (e) {
    print(e);
  }
  return null;
}
