import 'package:evently_test/core/resources/images_manager/images_manager.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String title;
  final IconData icon;
  final String image;

  CategoryModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.image,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      id: 0,
      title: 'All',
      icon: Icons.menu,
      image: ImagesManager.birthdayImage,
    ),
    CategoryModel(
      id: 1,
      title: 'Sport',
      icon: Icons.sports_football,
      image: ImagesManager.exhibitionsImage,
    ),
    CategoryModel(
      id: 2,
      title: 'Birthday',
      icon: Icons.cake,
      image: ImagesManager.birthdayImage,
    ),
    CategoryModel(
      id: 3,
      title: 'Meeting',
      icon: Icons.laptop,
      image: ImagesManager.metting_image,
    ),
    CategoryModel(
      id: 4,
      title: 'Gaming',
      icon: Icons.videogame_asset,
      image: ImagesManager.bookclubImage,
    ),
    CategoryModel(
      id: 5,
      title: 'Workshop',
      icon: Icons.assured_workload_rounded,
      image: ImagesManager.exhibitionsImage,
    ),
  ];
}
