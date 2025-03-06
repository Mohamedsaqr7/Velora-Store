import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velora/core/common/widgets/animate_do.dart';
import 'package:velora/core/common/widgets/text_app.dart';
import 'package:velora/core/context/context_extension.dart';
import 'package:velora/core/language/lang_keys.dart';
import 'package:velora/core/style/fonts/font_weight.dart';
import 'package:velora/core/style/theme/spacing.dart';
import 'package:velora/feature/auth/presentation/component/auth_title_info.dart';
import 'package:velora/feature/auth/presentation/component/dark_and_lang_buttons.dart';

import 'login_button.dart';
import 'login_textform.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DarkAndLangButtons(),
            verticalSpace(50),
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            verticalSpace(30),
            LoginTextformScreen(),
            verticalSpace(30),
            LoginButton(),
            verticalSpace(30),
            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                  text: context.translate(LangKeys.createAccount),
                  theme: context.textStyle.copyWith(
                      fontWeight: FontWeightHelper.bold,
                      fontSize: 16.sp,
                      color: context.color.bluePinkLight)),
            ),
          ],
        ),
      ),
    );
  }
}
