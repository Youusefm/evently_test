import 'package:evently_test/core/routes/routes_manager.dart';
import 'package:evently_test/core/widgets/custom_elevated_button.dart';
import 'package:evently_test/core/widgets/custom_text_button.dart';
import 'package:evently_test/core/widgets/validator.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/images_manager/images_manager.dart';
import '../../../core/widgets/custom_text_form_filed.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _emailController;
  late TextEditingController _nameController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _nameController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isscured = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 17.h),
            child: Column(
              children: [
                SizedBox(height: 40.h),

                Image.asset(ImagesManager.evently_word),
                SizedBox(height: 48.h),
                Text(
                  "Create your account",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 24.h),
                CustomTextFormFiled(
                  validator: Validator.validateName,
                  controller: _nameController,
                  labelText: "Enter your name",
                  prefixIcon: Icon(Icons.person_outline_outlined),
                ),
                SizedBox(height: 16.h),
                CustomTextFormFiled(
                  validator: Validator.validateEmail,
                  controller: _emailController,
                  labelText: "Enter your email",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 16.h),

                CustomTextFormFiled(
                  isscure: isscured,
                  validator: Validator.validatePassword,
                  controller: _passwordController,
                  labelText: "Enter your password",
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

                CustomTextFormFiled(
                  validator: (value) {
                    return Validator.validateConfirmPassword(
                      value,
                      _passwordController.text,
                    );
                  },
                  isscure: isscured,
                  controller: _confirmPasswordController,
                  labelText: "Confirm your password",
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
                SizedBox(height: 60.h),

                CustomElevatedButton(text: "Sign Up", onpressed: _register),
                SizedBox(height: 48.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CustomTextButton(
                      text: " login",
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RoutesManager.login,
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
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final password = _passwordController.text;

      print('Name: $name');
      print('Email: $email');
      print('Password: $password');
    }
  }
}
