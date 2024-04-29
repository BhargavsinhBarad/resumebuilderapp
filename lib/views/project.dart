import 'package:flutter/material.dart';
import 'package:resumebuilderapp/utils/globals.dart';

class project extends StatefulWidget {
  const project({super.key});

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Column(
              children: [
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
                      "Project",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (val) {
                          Global.projectd = val;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                Global.projectlist.add(Global.projectd);

                                Global.projectd = null;
                                Global.prcontroller.clear();
                                setState(() {});
                              },
                              icon: const Icon(Icons.add)),
                          hintText: "Enter your project",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Your project",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all()),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                Global.projectlist.map((e) => Text(e)).toList(),
                          ),
                        ),
                      )
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
