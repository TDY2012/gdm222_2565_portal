import 'package:flutter/material.dart';

enum ScoringCriteriaEnum {
  CRITERIA_1,
  CRITERIA_2,
  CRITERIA_3,
  CRITERIA_4,
}

class GDM222Year65QuestionnaireBeforeClassAnswer {

  static const double MIN_SCORE = 5;
  static const double MAX_SCORE = 95;
  static const double MIN_SCORE_DIFF = 40;

  static const String PASSION_HARDWARE_INTERFACING = "Hardware interfacing";
  static const String PASSION_GRAPHICS_AND_SHADER = "Graphics and shader";
  static const String PASSION_NETWORKING = "Networking";
  static const String PASSION_MACHINE_LEARNING_AND_AI = "Machine learning and AI";
  static const String PASSION_PHYSICS_SIMULATION = "Physics simulation";
  static const String PASSION_PIPELINE_ADVANCEMENT_DEVELOPMENT = "Pipeline advancement development";
  static const String PASSION_CORE_GAMEPLAY = "Core gameplay";

  String student_id = '';
  String email = '';
  bool can_bring_laptop = false;
  ScoringCriteriaEnum scoring_criteria = ScoringCriteriaEnum.CRITERIA_1;
  RangeValues score_range = RangeValues(25, 80);
  Map passion_map = {
    PASSION_HARDWARE_INTERFACING: false, 
    PASSION_GRAPHICS_AND_SHADER: false, 
    PASSION_NETWORKING: false, 
    PASSION_MACHINE_LEARNING_AND_AI: false, 
    PASSION_PHYSICS_SIMULATION: false, 
    PASSION_PIPELINE_ADVANCEMENT_DEVELOPMENT: false, 
    PASSION_CORE_GAMEPLAY: false, 
  };

  save() {
    print('called server');
  }
}