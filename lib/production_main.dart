import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:journo_blog_app/data/repositories/auth_repo.dart';
import 'package:journo_blog_app/data/repositories/categories_repo.dart';
import 'package:journo_blog_app/data/repositories/posts_repo.dart';
import 'package:journo_blog_app/data/repositories/tags_repo.dart';

import 'data/repositories/repository.dart';
import 'my_app.dart';
import 'utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var initialLocale = await Utils.getLocale();
  FlavorConfig(
    name: "PROD",
    variables: {
      "primaryColor": Colors.orange,
      "mainUrl": "https://techblog.codersangam.com/api/",
    },
  );
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
