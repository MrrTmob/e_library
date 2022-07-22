import 'dart:io';

import 'package:amplify_api/model_mutations.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:e_library/api/upload_file.dart';
import 'package:e_library/functions/pickImage.dart';
import 'package:e_library/functions/pickfile.dart';
import 'package:e_library/models/Book.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  String path = "";
  String name = "";
  String image = "";
   TextEditingController title = TextEditingController();
    TextEditingController author = TextEditingController();
    
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    title.dispose();
    author.dispose();

    
  }
  @override
  Widget build(BuildContext context) {
    PlatformFile? filePath;
   

   
    const TextStyle style = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.75);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload"),
        backgroundColor: primaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text("Image", style: style),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GestureDetector(
                onTap: () async {
                  image = (await pickImage())!;
                  setState(() {});
                },
                child: image==""?Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(64),
                    child: Icon(
                      Icons.add,
                      color: Color(0xFF6E7191),
                    ),
                  ),
                ):ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.file(File(image),width: 150,height: 150,fit: BoxFit.cover,)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text("Title", style: style),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: buildTextField("Title", title),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            //   child: Text("Author", style: style),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //   child: buildTextField("Author", author),
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text("File", style: style),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 28, right: 8),
                  child: GestureDetector(
                    onTap: () async {
                      filePath = await pickFile();

                      setState(() {
                        name = filePath!.name;
                        path = filePath!.path!;
                      });
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          path == ""
                              ? const Text("Pick a file from your device",
                                  style: TextStyle(
                                      color: Color(0xFF6E7191),
                                      fontSize: 16,
                                      letterSpacing: 1.2))
                              : Text(name,
                                  style: const TextStyle(
                                      color: Color(0xFF6E7191),
                                      fontSize: 16,
                                      letterSpacing: 1.2)),
                          const Icon(
                            Icons.chevron_right_rounded,
                            color: Color(0xFF6E7191),
                            size: 32,
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
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
                  onPressed: () {
                    final book = Book(title: title.text, bookUrl: name, imageUrl: image, authorID: "1");
                    final request = ModelMutations.create(book);

                  uploadFile(path).then((value) => uploadFile(image).then((value) async => await Amplify.API.mutate(request: request).response));
                  },
                  child: const Text(
                    "Upload",
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

TextField buildTextField(String hintText, TextEditingController controller) {
  return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: secondaryColor,
        filled: true,
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Color(0xFF6E7191), letterSpacing: 1.2),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 26.0, vertical: 16.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.transparent)),
      ));
}
