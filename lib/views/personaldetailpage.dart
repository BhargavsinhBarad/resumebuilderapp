import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resumebuilderapp/utils/globals.dart';

class personaldetail extends StatefulWidget {
  personaldetail({super.key});

  @override
  State<personaldetail> createState() => _personaldetailState();
}

class _personaldetailState extends State<personaldetail> {
  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8)),
                    color: Colors.grey,
                  ),
                  child: const Center(
                    child: Text(
                      "Personal Details",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () async {
                            final XFile? photo = await picker.pickImage(
                                source: ImageSource.camera);
                            Global.file = File(photo!.path);
                            setState(() {});
                          },
                          child: (Global.file == null)
                              ? const CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.grey,
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 33,
                                  )),
                                )
                              : CircleAvatar(
                                  radius: 60,
                                  foregroundImage:
                                      FileImage(File(Global.file!.path)),
                                )),
                      TextFormField(
                        onChanged: (val) {
                          Global.name = val;
                        },
                        controller: Global.namecontroller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.account_circle_sharp),
                            hintText: "name",
                            label: Text("Name")),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.email = val;
                        },
                        controller: Global.emailcontroller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "email",
                            label: Text("Email")),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.number = val;
                        },
                        controller: Global.numcontroller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: "contact number",
                          label: Text("Contact Number"),
                        ),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.location = val;
                        },
                        controller: Global.locationcontroller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.location_city),
                          hintText: "location",
                          label: Text("Location"),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Text(
                            "DOB : ",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () async {
                                Global.datepick = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2025));
                              },
                              icon: const Icon(
                                Icons.calendar_month,
                                size: 30,
                              )),
                        ],
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.introduction = val;
                        },
                        controller: Global.introcontroller,
                        maxLength: 100,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.location_city),
                          hintText: "About your Self",
                          label: Text("Introduction"),
                        ),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.hobby = val;
                        },
                        controller: Global.hobbycontroller,
                        maxLength: 70,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.favorite),
                          hintText: "Hobby",
                          label: Text("Hobby/Interests"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
