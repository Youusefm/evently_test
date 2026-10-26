import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:evently_test/core/widgets/custom_text_form_filed.dart';
import 'package:evently_test/l10n/app_localizations.dart';
import 'package:evently_test/providers/lang_provider.dart';
import 'package:evently_test/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../core/resources/images_manager/images_manager.dart';
import '../../../../providers/themeprovider.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  late AppLocalizations _appLocalizations;
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    _appLocalizations = AppLocalizations.of(context)!;
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LangProvider>(context);

    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 60.h),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(100.r),
            child: Image.asset(ImagesManager.route_image),
          ),
          SizedBox(height: 10.h),

          Text(
            "Youssef Ahmed",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 4.h),

          Text(
            "yussuf@gmail.com",
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorsManager.grey68,
            ),
          ),
          SizedBox(height: 32.h),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                width: 1.w,
                color: Theme.of(context).focusColor,
              ),
              color: Theme.of(context).cardColor,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _appLocalizations.darkMode,
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                Switch(
                  value: themeProvider.isDark(),
                  onChanged: (value) {
                    themeProvider.changeTheme(
                      value ? ThemeMode.dark : ThemeMode.light,
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                width: 1.w,
                color: Theme.of(context).focusColor,
              ),
              color: Theme.of(context).cardColor,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 16.w),
            child: DropdownButton<String>(
              hint: Text(
                _appLocalizations.language,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              value: selectedLanguage,
              isExpanded: true,
              underline: const SizedBox(),
              dropdownColor: Theme.of(context).primaryColor,
              focusColor: Theme.of(context).primaryColor,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).hintColor,
              ),

              items: [
                DropdownMenuItem(
                  value: "EN",
                  child: Text(
                    "EN",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  onTap: () {
                    langProvider.changeLange("en");
                  },
                ),
                DropdownMenuItem(
                  value: "AR",
                  child: Text(
                    "AR",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  onTap: () {
                    langProvider.changeLange("ar");
                  },
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value;
                });
              },
            ),
          ),
          SizedBox(height: 16.h),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                width: 1.w,
                color: Theme.of(context).focusColor,
              ),
              color: Theme.of(context).cardColor,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _appLocalizations.logout,
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                Icon(Icons.logout_outlined, color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
