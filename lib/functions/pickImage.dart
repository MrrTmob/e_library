import 'package:file_picker/file_picker.dart';

Future<String?> pickImage() async {
  try {
    PlatformFile? path = (await FilePicker.platform.pickFiles(
      type: FileType.image,
    ))
        ?.files
        .first;
    return path!.path;
  } catch (e) {
    print(e);
  }
  return null;
}
