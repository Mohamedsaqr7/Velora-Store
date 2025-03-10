import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/di/dependency_injection.dart';
import 'package:velora/core/routes/base_route.dart';
import 'package:velora/feature/admin/a.dart';
import 'package:velora/feature/auth/login/presentation/login_screen.dart';
import 'package:velora/feature/auth/sign_up/presentation/signup/signup_screen.dart';
import 'package:velora/feature/customer/s.dart';

import '../../feature/auth/login/logic/login/login_cubit.dart';
import '../common/screens/under_build_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String homeAdmin = '/homeAdmin';
  static const String homeCustomer = '/homeCustomer';
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ));
      case signUp:
        return BaseRoute(page: const SignupScreen());
      case homeAdmin:
        return  MaterialPageRoute(
          builder: (_) => const adm(),
        );
      case homeCustomer:
         return MaterialPageRoute(
          builder: (_) => const cust(),
        );
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
