import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_form_filed.dart';
import '../../../../models/event_model.dart';
import '../home_tab/event_item.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 54.h),
          child: Column(
            children: [
              CustomTextFormFiled(
                labelText: "Search for event",
                suffixIcon: Icon(Icons.search),
              ),
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
