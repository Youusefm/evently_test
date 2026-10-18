import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:evently_test/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EventItem extends StatelessWidget {
  EventItem({super.key, required this.event});
  EventModel event;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(
          image: AssetImage(event.category.image),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8.r),
            ),

            color: ColorsManager.whitef4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "21 Jan",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorsManager.blue0E,
                ),
              ),
            ),
          ),
          SizedBox(height: 97.h),
          Card(
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            color: ColorsManager.whitef4,
            child: Container(
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      event.description,
                      style: Theme.of(context).textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(Icons.favorite_outline, color: ColorsManager.blue0E),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
