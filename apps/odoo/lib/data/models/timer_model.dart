import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class TimerModel extends Equatable {
  const TimerModel({
    required this.id,
    required this.project,
    required this.task,
    required this.isCompleted,
    required this.elapsedTimeInSec,
    required this.description,
    required this.isFavorite,
    required this.timeIsRunning,
  });

  final String id;
  final String project;
  final String task;
  final String description;
  final bool isFavorite;
  final bool isCompleted;
  final int elapsedTimeInSec;
  final bool timeIsRunning;

  TimerModel copyWith({
    String? id,
    String? project,
    String? task,
    String? description,
    bool? isFavorite,
    bool? isCompleted,
    int? elapsedTimeInSec,
    bool? timeIsRunning,
  }) {
    return TimerModel(
      id: id ?? this.id,
      project: project ?? this.project,
      task: task ?? this.task,
      description: description ?? this.description,
      isFavorite: isFavorite ?? this.isFavorite,
      isCompleted: isCompleted ?? this.isCompleted,
      elapsedTimeInSec: elapsedTimeInSec ?? this.elapsedTimeInSec,
      timeIsRunning: timeIsRunning ?? this.timeIsRunning,
    );
  }

  factory TimerModel.fromJson(Map<String, dynamic> json) {
    return TimerModel(
      id: json['id'] as String,
      project: json['project'] as String,
      task: json['task'] as String,
      description: json['description'] as String,
      isFavorite: json['isFavorite'] as bool,
      isCompleted: json['isCompleted'] as bool,
      elapsedTimeInSec: json['elapsedTimeInSec'] as int,
      timeIsRunning: json['timeIsRunning'] as bool,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'project': project,
    'task': task,
    'description': description,
    'isFavorite': isFavorite,
    'isCompleted': isCompleted,
    'elapsedTimeInSec': elapsedTimeInSec,
    'timeIsRunning': timeIsRunning,
  };

  @override
  List<Object?> get props => [
    id,
    project,
    task,
    description,
    isFavorite,
    isCompleted,
    elapsedTimeInSec,
    timeIsRunning,
  ];
}
