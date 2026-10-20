import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:evently_test/core/widgets/custom_tab_bar.dart';
import 'package:evently_test/features/home/tabs/home_tab/event_item.dart';
import 'package:evently_test/core/widgets/tab_item.dart';
import 'package:evently_test/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../models/catergory_model.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 39.5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Welcome Back ✨",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        "Youssef Ahmed",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.light_mode_outlined,
                        color: ColorsManager.blue0E,
                      ),
                      SizedBox(width: 10.w),
                      InkWell(
                        hoverColor: ColorsManager.blue0E,
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorsManager.blue0E,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          child: Text(
                            "EN",
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorsManager.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              CustomTabBar(categoryList: CategoryModel.categoriesWithAll),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return EventItem(event: EventModel.events[2]);
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
