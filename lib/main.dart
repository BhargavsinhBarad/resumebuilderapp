import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumebuilderapp/utils/approutes.dart';
import 'package:resumebuilderapp/views/achievement.dart';
import 'package:resumebuilderapp/views/eduction.dart';
import 'package:resumebuilderapp/views/experience.dart';
import 'package:resumebuilderapp/views/homepage.dart';
import 'package:resumebuilderapp/views/personaldetailpage.dart';
import 'package:resumebuilderapp/views/project.dart';
import 'package:resumebuilderapp/views/skill.dart';
import 'package:resumebuilderapp/views/viewspage.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (ctx) => homePage(),
        Approutes.PersonalPage: (ctx) => personaldetail(),
        Approutes.EductionPage: (ctx) => eduction(),
        Approutes.SkillPage: (ctx) => skills(),
        Approutes.AchievementPage: (ctx) => achievement(),
        Approutes.ProjectPage: (ctx) => project(),
        Approutes.ExperiencePage: (ctx) => experience(),
        Approutes.viewsPage: (ctx) => viewspage(),
      },
    ),
  );
}
