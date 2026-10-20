import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:evently_test/models/catergory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabItem extends StatelessWidget {
  TabItem({super.key, required this.category, required this.isSelected});

  CategoryModel category;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.blue0E : ColorsManager.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorsManager.greyB9, width: 1.w),
      ),
      child: Row(
        children: [
          Icon(
            category.icon,
            color: isSelected ? ColorsManager.white : ColorsManager.blue0E,
          ),
          SizedBox(width: 8.w),
          Text(
            category.title,
            style: isSelected
                ? GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorsManager.white,
                  )
                : Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
