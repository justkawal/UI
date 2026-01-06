import 'package:flutter/material.dart';

class DestinationCategoryModel {
  final String categoryName;
  final IconData iconData;

  const DestinationCategoryModel({
    required this.categoryName,
    required this.iconData,
  });

  static List<DestinationCategoryModel> destinationCategories = [
    DestinationCategoryModel(
      categoryName: 'All',
      iconData: Icons.grid_view_rounded,
    ),
    DestinationCategoryModel(
      categoryName: 'City',
      iconData: Icons.location_city,
    ),
    DestinationCategoryModel(
      categoryName: 'Beach',
      iconData: Icons.beach_access,
    ),
    DestinationCategoryModel(
      categoryName: 'Mountain',
      iconData: Icons.terrain,
    ),
    DestinationCategoryModel(
      categoryName: 'Desert',
      iconData: Icons.landscape,
    ),
    DestinationCategoryModel(
      categoryName: 'Forest',
      iconData: Icons.eco,
    ),
    DestinationCategoryModel(
      categoryName: 'Lake',
      iconData: Icons.water,
    ),
    DestinationCategoryModel(
      categoryName: 'River',
      iconData: Icons.alt_route,
    ),
    DestinationCategoryModel(
      categoryName: 'Island',
      iconData: Icons.landscape,
    ),
  ];
}
