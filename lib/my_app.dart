import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/velocity_bloc.dart';

import 'core/constants/my_strings.dart';
import 'core/themes/app_themes.dart';
import 'presentation/blocs/bloc/language_bloc.dart';
import 'presentation/router/router_imports.dart';
import 'presentation/screens/general/profile/profile_model.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => VelocityBloc<ProfileModel>(ProfileModel()),
              ),
              BlocProvider(
                create: (context) => LanguageBloc(),
              ),
            ],
            child: BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return FlavorBanner(
                  color: FlavorConfig.instance.variables['primaryColor'],
                  location: BannerLocation.bottomEnd,
                  child: MaterialApp.router(
                    locale: state.locale,
                    title: MyStrings.appName,
                    theme: AppThemes.light,
                    darkTheme: AppThemes.dark,
                    routerConfig: _appRouter.config(),
                    localizationsDelegates: const [
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: const [
                      Locale('en', 'US'),
                      Locale('ne', 'NP'),
                      Locale('hi', 'IN'),
                      Locale('ar', 'AE'),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
