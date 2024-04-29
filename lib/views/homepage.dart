import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumebuilderapp/utils/approutes.dart';

import 'package:resumebuilderapp/utils/lists.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Maker"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              icon: Icon(Icons.sunny))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.withOpacity(0.7),
        onPressed: () {
          Navigator.pushNamed(context, Approutes.viewsPage);
        },
        child: Icon(Icons.view_sidebar_outlined),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: option.length,
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: () {
              Navigator.of(ctx).pushNamed("${option[i]['route']}");
            },
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.3)),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(child: Text("${option[i]['name']}")),
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      "${option[i]['icon']}",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
