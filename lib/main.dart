import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog_app/core/themes/app_themes.dart';

import 'presentation/router/router_imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Journo',
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
