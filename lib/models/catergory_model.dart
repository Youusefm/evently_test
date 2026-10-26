import 'package:evently_test/core/resources/images_manager/images_manager.dart';
import 'package:evently_test/l10n/app_localizations.dart';
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

  static List<CategoryModel> getCategoriesWithAll(BuildContext context) {
    late AppLocalizations _applocalizations = AppLocalizations.of(context)!;
    List<CategoryModel> categoriesWithAll = [
      CategoryModel(
        id: 0,
        title: _applocalizations.all,
        icon: Icons.menu,
        image: ImagesManager.birthdayImage,
      ),
      CategoryModel(
        id: 1,
        title: _applocalizations.sport,
        icon: Icons.sports_football,
        image: ImagesManager.exhibitionsImage,
      ),
      CategoryModel(
        id: 2,
        title: _applocalizations.birthday,
        icon: Icons.cake,
        image: ImagesManager.birthdayImage,
      ),
      CategoryModel(
        id: 3,
        title: _applocalizations.meeting,
        icon: Icons.laptop,
        image: ImagesManager.metting_image,
      ),
      CategoryModel(
        id: 4,
        title: _applocalizations.gaming,
        icon: Icons.videogame_asset,
        image: ImagesManager.bookclubImage,
      ),
      CategoryModel(
        id: 5,
        title: _applocalizations.workshop,
        icon: Icons.assured_workload_rounded,
        image: ImagesManager.exhibitionsImage,
      ),
    ];
    return categoriesWithAll;
  }

  static List<CategoryModel> getCategories(BuildContext context) {
    late AppLocalizations _applocalization = AppLocalizations.of(context)!;
    List<CategoryModel> categories = [
      CategoryModel(
        id: 1,
        title: _applocalization.sport,
        icon: Icons.sports_football,
        image: ImagesManager.exhibitionsImage,
      ),
      CategoryModel(
        id: 2,
        title: _applocalization.birthday,
        icon: Icons.cake,
        image: ImagesManager.birthdayImage,
      ),
      CategoryModel(
        id: 3,
        title: _applocalization.meeting,
        icon: Icons.laptop,
        image: ImagesManager.metting_image,
      ),
      CategoryModel(
        id: 4,
        title: _applocalization.gaming,
        icon: Icons.videogame_asset,
        image: ImagesManager.bookclubImage,
      ),
      CategoryModel(
        id: 5,
        title: _applocalization.workshop,
        icon: Icons.assured_workload_rounded,
        image: ImagesManager.exhibitionsImage,
      ),
    ];
    return categories;
  }
}
