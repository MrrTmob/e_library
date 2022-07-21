import 'package:flutter/material.dart';

import '../utils.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController title = TextEditingController();
    TextEditingController author = TextEditingController();
    const TextStyle style = TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.75);
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
              padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              child:  Text("Image",style: style),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.circular(12.0)),
                child: const Padding(
                  padding: EdgeInsets.all(64),
                  child: Icon(Icons.add,color: Color(0xFF6E7191),),
                ),),
            ),
             const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              child:  Text("Title",style:style),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: buildTextField("Title", title),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              child:  Text("Author",style:style),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: buildTextField("Author", author),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              child:  Text("File",style:style),
            
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(),
            )
            ,Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 28,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                     Text("Pick PDF from your device",style: TextStyle(color: Color(0xFF6E7191),fontSize: 16, letterSpacing: 1.2)),
                    Icon( Icons.chevron_right_rounded,color: Color(0xFF6E7191),size: 32,),
                  ]),
                ),
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  
                   style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                    
                      primary: primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
                  onPressed: (){}, child: const Text("Upload",style: style,),
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
