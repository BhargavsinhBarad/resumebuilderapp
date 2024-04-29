import 'package:flutter/material.dart';

import '../utils/globals.dart';

class eduction extends StatelessWidget {
  eduction({super.key});

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
                      "Eduction",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (val) {
                          Global.sscschool = val;
                        },
                        controller: Global.sscschoolcontroller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.school),
                            hintText: "SSC School",
                            label: Text("SSC School")),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.sscper = val;
                        },
                        controller: Global.sscpercontroller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.percent),
                            hintText: "SSC Percentage",
                            label: Text("SSc Percentage")),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.hhc = val;
                        },
                        controller: Global.hhccontroller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.school),
                          hintText: "HSC School",
                          label: Text("HSC School"),
                        ),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.hper = val;
                        },
                        controller: Global.hhcpercontroller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.percent),
                          hintText: "HSC Percentage",
                          label: Text("HSC Percentage"),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.Collage = val;
                        },
                        controller: Global.collagecontroller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.school),
                          hintText: "Collage",
                          label: Text("collage"),
                        ),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.qulification = val;
                        },
                        controller: Global.quacontroller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.school),
                          hintText: "Qualification",
                          label: Text("qualification"),
                        ),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          Global.cgpa = val;
                        },
                        controller: Global.cgpacontroller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.percent),
                          hintText: "cqpa",
                          label: Text("Cgpa"),
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
