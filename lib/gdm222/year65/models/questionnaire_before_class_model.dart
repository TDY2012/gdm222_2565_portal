import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
}

class GDM222Year65QuestionnaireBeforeClassResponse {
  final String timestamp;
  final String student_id;

  const GDM222Year65QuestionnaireBeforeClassResponse({
    required this.timestamp,
    required this.student_id
  });

  factory GDM222Year65QuestionnaireBeforeClassResponse.fromJson(Map<String, dynamic> json) {
    return GDM222Year65QuestionnaireBeforeClassResponse(
      timestamp: json['timestamp'],
      student_id: json['student_id']
    );
  }
}

Future<List<GDM222Year65QuestionnaireBeforeClassResponse>> fetchResponses() async {
  final response = await http.post(
    Uri.parse('https://database.deta.sh/v1/c0ekbbbz/gdm222_2565_questionnaire_before_class_reponse/query'),
    headers: <String, String>{
      'X-API-Key' : 'c0ekbbbz_DTUMwaPcCBuzFXbWPe9emPPYA2qQjo8c',
      'Content-Type': 'application/json; charset=UTF-8',
    }
  );

  final List<dynamic> parsedResponseList = jsonDecode(response.body)['items'];
  final List<GDM222Year65QuestionnaireBeforeClassResponse> responseList = parsedResponseList.map(
    (e) => GDM222Year65QuestionnaireBeforeClassResponse.fromJson(e)
  ).toList();

  return responseList;
}

Future<void> submitResponse(GDM222Year65QuestionnaireBeforeClassAnswer answer) async {
  final response = await http.put(
    Uri.parse('https://database.deta.sh/v1/c0ekbbbz/gdm222_2565_questionnaire_before_class_reponse/items'),
    headers: <String, String>{
      'X-API-Key' : 'c0ekbbbz_DTUMwaPcCBuzFXbWPe9emPPYA2qQjo8c',
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: json.encode( {
      'items': [
        {
          'timestamp': DateTime.now().toIso8601String(),
          'student_id': answer.student_id,
          'email': answer.email,
          'can_bring_laptop': answer.can_bring_laptop,
          'scoring_criteria': answer.scoring_criteria.toString(),
          'score_f': answer.score_range.start,
          'score_a': answer.score_range.end,
          'passion_hardware_interfacing': answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_HARDWARE_INTERFACING],
          'passion_graphics_and_shader': answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_GRAPHICS_AND_SHADER],
          'passion_networking': answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_NETWORKING],
          'passion_machine_learning_and_ai': answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_MACHINE_LEARNING_AND_AI],
          'passion_physics_simulation': answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PHYSICS_SIMULATION],
          'passion_pipeline_advancement_development': answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PIPELINE_ADVANCEMENT_DEVELOPMENT],
          'passion_core_gameplay': answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_CORE_GAMEPLAY],
        }
      ]
    })
  );
}