import 'package:evently_test/core/resources/images_manager/images_manager.dart';
import 'package:evently_test/core/widgets/custom_elevated_button.dart';
import 'package:evently_test/core/widgets/custom_tab_bar.dart';
import 'package:evently_test/core/widgets/custom_text_button.dart';
import 'package:evently_test/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/catergory_model.dart';
import '../../core/widgets/tab_item.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  int currentIndex = 0;
  DateTime selectdate = DateTime.now();
  TimeOfDay selecttime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Add event")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              Image.asset(ImagesManager.bookclubImage, fit: BoxFit.fill),
              CustomTabBar(categoryList: CategoryModel.categories),
              SizedBox(height: 16.h),

              Text("Title", style: Theme.of(context).textTheme.labelMedium),
              SizedBox(height: 8.h),
              CustomTextFormFiled(labelText: "Event Title"),
              SizedBox(height: 16.h),
              Text(
                "Description ",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: 8.h),
              CustomTextFormFiled(
                labelText: "Event Description....",
                maxLines: 4,
              ),
              SizedBox(height: 16.h),

              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.date_range,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  Text(
                    selectdate.toString().substring(0, 10),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Spacer(),
                  CustomTextButton(text: "Choose date", onTap: _showdatePicker),
                ],
              ),
              SizedBox(height: 16.h),

              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.access_time,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  Text(
                    "${selecttime.hour} : ${selecttime.minute} ${selecttime.period.name}",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Spacer(),
                  CustomTextButton(text: "Choose time", onTap: _showtimePicker),
                ],
              ),

              CustomElevatedButton(text: "Add event", onpressed: () {}),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }

  void _showdatePicker() async {
    selectdate =
        await showDatePicker(
          context: context,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(Duration(days: 365)),
        ) ??
        selectdate;
    setState(() {});
  }

  void _showtimePicker() async {
    setState(() {});
    selecttime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now()) ??
        selecttime;
  }
}
