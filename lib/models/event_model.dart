import 'package:flutter/material.dart';

import 'catergory_model.dart';

class EventModel {
  final int id;
  final CategoryModel category;
  final String title;
  final String description;
  final DateTime date;
  final TimeOfDay time;

  EventModel({
    required this.id,
    required this.category,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });

  static List<EventModel> getevents(BuildContext context) {
    List<EventModel> events = [
      EventModel(
        id: 1,
        category: CategoryModel.getCategories(context)[0],
        title: 'Football Match',
        description: 'Football match with friends',
        date: DateTime(2026, 10, 20),
        time: const TimeOfDay(hour: 20, minute: 0),
      ),

      EventModel(
        id: 2,
        category: CategoryModel.getCategories(context)[1],
        title: 'Birthday Party',
        description: 'Birthday celebration with family',
        date: DateTime(2026, 10, 22),
        time: const TimeOfDay(hour: 18, minute: 30),
      ),

      EventModel(
        id: 3,
        category: CategoryModel.getCategories(context)[2],
        title: 'Team Meeting',
        description: 'Weekly team meeting',
        date: DateTime(2026, 10, 24),
        time: const TimeOfDay(hour: 10, minute: 0),
      ),

      EventModel(
        id: 4,
        category: CategoryModel.getCategories(context)[3],
        title: 'Gaming Night',
        description: 'Gaming night with friends',
        date: DateTime(2026, 10, 26),
        time: const TimeOfDay(hour: 21, minute: 0),
      ),

      EventModel(
        id: 5,
        category: CategoryModel.getCategories(context)[4],
        title: 'Flutter Workshop',
        description: 'Learn Flutter development',
        date: DateTime(2026, 10, 28),
        time: const TimeOfDay(hour: 12, minute: 0),
      ),
    ];
    return events;
  }
}
