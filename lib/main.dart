import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:journo_blog_app/core/constants/my_strings.dart';
import 'package:journo_blog_app/data/repositories/auth_repo.dart';
import 'package:journo_blog_app/data/repositories/categories_repo.dart';
import 'package:journo_blog_app/data/repositories/posts_repo.dart';
import 'package:journo_blog_app/data/repositories/tags_repo.dart';
import 'package:journo_blog_app/presentation/screens/general/profile/profile_model.dart';
import 'package:velocity_bloc/velocity_bloc.dart';
import 'core/themes/app_themes.dart';
import 'data/repositories/repository.dart';
import 'presentation/blocs/bloc/language_bloc.dart';
import 'presentation/router/router_imports.dart';
import 'utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var initialLocale = await Utils.getLocale();
  FlavorConfig(name: "PROD", variables: {
    "counter": 0,
    "baseUrl": "https://www.example.com",
  });
  runApp(
    RepositoryProvider(
      create: (context) => Repository(
        tagsRepo: TagsRepo(),
        categoriesRepo: CategoriesRepo(),
        authRepo: AuthRepo(),
        postsRepo: PostsRepo(),
      ),
      child: I18n(
        initialLocale: initialLocale,
        child: MyApp(),
      ),
    ),
  );
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
                  color: Colors.green,
                  location: BannerLocation.topEnd,
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
