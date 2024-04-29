import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/globals.dart';

class skills extends StatefulWidget {
  skills({super.key});

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
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
                      "Skill",
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
                          Global.skillad = val;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                Global.skillsadd.add(Global.skillad);

                                Global.skillad = null;
                                Global.skillcontroller.clear();
                                setState(() {});
                              },
                              icon: const Icon(Icons.add)),
                          hintText: "Enter your skill",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Your Skill",
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
                                Global.skillsadd.map((e) => Text(e)).toList(),
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
