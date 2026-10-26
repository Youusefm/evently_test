import 'package:evently_test/core/resources/colors_manager/colors_manager.dart';
import 'package:evently_test/core/resources/images_manager/images_manager.dart';
import 'package:evently_test/core/widgets/custom_text_form_filed.dart';
import 'package:evently_test/core/widgets/validator.dart';
import 'package:evently_test/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routes/routes_manager.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/custom_text_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  late AppLocalizations _appLocalizations = AppLocalizations.of(context)!;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isscured = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.0.h),
            child: Column(
              children: [
                SizedBox(height: 40.h),

                Image.asset(ImagesManager.evently_word),
                SizedBox(height: 48.h),
                Text(
                  _appLocalizations.loginToYourAccount,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 24.h),
                CustomTextFormFiled(
                  validator: Validator.validateEmail,
                  controller: _emailController,
                  labelText: _appLocalizations.enterYourEmail,
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 16.h),

                CustomTextFormFiled(
                  isscure: isscured,
                  validator: Validator.validatePassword,
                  controller: _passwordController,
                  labelText: _appLocalizations.enterYourPassword,
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isscured
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                    onPressed: () {
                      isscured = !isscured;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 16.h),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    text: _appLocalizations.forgetPassword,
                    onTap: () {
                      Navigator.pushNamed(context, RoutesManager.login);
                    },
                  ),
                ),
                SizedBox(height: 60.h),

                CustomElevatedButton(
                  text: _appLocalizations.signUp,
                  onpressed: _register,
                ),
                SizedBox(height: 48.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _appLocalizations.dontHaveAnAccount,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CustomTextButton(
                      text: _appLocalizations.signUp,
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RoutesManager.register,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _register() {
    if (formKey.currentState!.validate()) {
      final email = _emailController.text.trim();
      final password = _passwordController.text;
    }
  }
}
