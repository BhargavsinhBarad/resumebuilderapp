import 'dart:io';

import 'package:flutter/material.dart';

import '../utils/globals.dart';

class viewspage extends StatefulWidget {
  const viewspage({super.key});

  @override
  State<viewspage> createState() => _viewspageState();
}

class _viewspageState extends State<viewspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 170,
                  height: 600,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (Global.file == null)
                          ? const CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.grey,
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 33,
                              )),
                            )
                          : CircleAvatar(
                              radius: 45,
                              foregroundImage:
                                  FileImage(File(Global.file!.path)),
                            ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("🙎‍♂️ : ${Global.name}"),
                      Text("✉️ : ${Global.email}"),
                      Text("📱 : ${Global.number}"),
                      Text("🛖 : ${Global.location}"),
                      Text(
                          "📅 : ${Global.datepick?.day}/${Global.datepick?.month}/${Global.datepick?.year}"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Eduction",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("SSC"),
                      Text("${Global.sscschool} - ${Global.sscper} %"),
                      const Text("HSC"),
                      Text("${Global.hhc} - ${Global.hper} %"),
                      Text("${Global.qulification}"),
                      Text("${Global.Collage} - ${Global.cgpa} cgpa"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Achievement",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.achievements
                            .map(
                              (e) => Text(e),
                            )
                            .toList(),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  width: 150,
                  height: 600,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "About me",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 150,
                        child: Text("${Global.introduction}"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Skill",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.skillsadd
                            .map(
                              (e) => Text(e),
                            )
                            .toList(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Experience",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.explist
                            .map(
                              (e) => Text(e),
                            )
                            .toList(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Project",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.projectlist
                            .map(
                              (e) => Text(e),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
