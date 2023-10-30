// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i17;
import 'package:journo_blog_app/presentation/enums/navigate_type.dart' as _i19;
import 'package:journo_blog_app/presentation/screens/auth/auth_imports.dart'
    as _i3;
import 'package:journo_blog_app/presentation/screens/auth/login/login_imports.dart'
    as _i4;
import 'package:journo_blog_app/presentation/screens/auth/register/register_imports.dart'
    as _i2;
import 'package:journo_blog_app/presentation/screens/general/categories/add_categories/add_categories_imports.dart'
    as _i10;
import 'package:journo_blog_app/presentation/screens/general/categories/categories_imports.dart'
    as _i9;
import 'package:journo_blog_app/presentation/screens/general/categories/categories_model.dart'
    as _i16;
import 'package:journo_blog_app/presentation/screens/general/categories/update_categories/update_categories_imports.dart'
    as _i11;
import 'package:journo_blog_app/presentation/screens/general/general_imports.dart'
    as _i12;
import 'package:journo_blog_app/presentation/screens/general/home/home_imports.dart'
    as _i5;
import 'package:journo_blog_app/presentation/screens/general/home/home_model.dart'
    as _i18;
import 'package:journo_blog_app/presentation/screens/general/tags/add_tags/add_tags_imports.dart'
    as _i8;
import 'package:journo_blog_app/presentation/screens/general/tags/tags_imports.dart'
    as _i6;
import 'package:journo_blog_app/presentation/screens/general/tags/tags_model.dart'
    as _i15;
import 'package:journo_blog_app/presentation/screens/general/tags/update_tags/update_tags_imports.dart'
    as _i7;
import 'package:journo_blog_app/presentation/screens/onboard/onboard_imports.dart'
    as _i13;
import 'package:journo_blog_app/presentation/screens/splash/splash_imports.dart'
    as _i1;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Register(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Auth(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Login(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomeDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
      );
    },
    TagsRoute.name: (routeData) {
      final args = routeData.argsAs<TagsRouteArgs>();
      return _i14.AutoRoutePage<_i15.Tag>(
        routeData: routeData,
        child: _i6.Tags(
          key: args.key,
          navigateType: args.navigateType,
        ),
      );
    },
    UpdateTagsRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateTagsRouteArgs>();
      return _i14.AutoRoutePage<_i15.TagsModel>(
        routeData: routeData,
        child: _i7.UpdateTags(
          key: args.key,
          tag: args.tag,
        ),
      );
    },
    AddTagsRoute.name: (routeData) {
      return _i14.AutoRoutePage<_i15.TagsModel>(
        routeData: routeData,
        child: const _i8.AddTags(),
      );
    },
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>();
      return _i14.AutoRoutePage<_i16.Category>(
        routeData: routeData,
        child: _i9.Categories(
          key: args.key,
          navigateType: args.navigateType,
        ),
      );
    },
    AddCategoriesRoute.name: (routeData) {
      return _i14.AutoRoutePage<_i16.CategoriesModel>(
        routeData: routeData,
        child: const _i10.AddCategories(),
      );
    },
    UpdateCategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateCategoriesRouteArgs>();
      return _i14.AutoRoutePage<_i16.CategoriesModel>(
        routeData: routeData,
        child: _i11.UpdateCategories(
          key: args.key,
          category: args.category,
        ),
      );
    },
    GeneralRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.General(),
      );
    },
    OnBoardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.OnBoard(),
      );
    },
  };
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Register]
class RegisterRoute extends _i14.PageRouteInfo<void> {
  const RegisterRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Auth]
class AuthRoute extends _i14.PageRouteInfo<void> {
  const AuthRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Login]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeDetails]
class HomeDetailsRoute extends _i14.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    _i17.Key? key,
    required _i18.Post post,
    required String imagePath,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          HomeDetailsRoute.name,
          args: HomeDetailsRouteArgs(
            key: key,
            post: post,
            imagePath: imagePath,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailsRoute';

  static const _i14.PageInfo<HomeDetailsRouteArgs> page =
      _i14.PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final _i17.Key? key;

  final _i18.Post post;

  final String imagePath;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
}

/// generated route for
/// [_i6.Tags]
class TagsRoute extends _i14.PageRouteInfo<TagsRouteArgs> {
  TagsRoute({
    _i17.Key? key,
    required _i19.NavigateType navigateType,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          TagsRoute.name,
          args: TagsRouteArgs(
            key: key,
            navigateType: navigateType,
          ),
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static const _i14.PageInfo<TagsRouteArgs> page =
      _i14.PageInfo<TagsRouteArgs>(name);
}

class TagsRouteArgs {
  const TagsRouteArgs({
    this.key,
    required this.navigateType,
  });

  final _i17.Key? key;

  final _i19.NavigateType navigateType;

  @override
  String toString() {
    return 'TagsRouteArgs{key: $key, navigateType: $navigateType}';
  }
}

/// generated route for
/// [_i7.UpdateTags]
class UpdateTagsRoute extends _i14.PageRouteInfo<UpdateTagsRouteArgs> {
  UpdateTagsRoute({
    _i17.Key? key,
    required _i15.Tag tag,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          UpdateTagsRoute.name,
          args: UpdateTagsRouteArgs(
            key: key,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateTagsRoute';

  static const _i14.PageInfo<UpdateTagsRouteArgs> page =
      _i14.PageInfo<UpdateTagsRouteArgs>(name);
}

class UpdateTagsRouteArgs {
  const UpdateTagsRouteArgs({
    this.key,
    required this.tag,
  });

  final _i17.Key? key;

  final _i15.Tag tag;

  @override
  String toString() {
    return 'UpdateTagsRouteArgs{key: $key, tag: $tag}';
  }
}

/// generated route for
/// [_i8.AddTags]
class AddTagsRoute extends _i14.PageRouteInfo<void> {
  const AddTagsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AddTagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Categories]
class CategoriesRoute extends _i14.PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    _i17.Key? key,
    required _i19.NavigateType navigateType,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(
            key: key,
            navigateType: navigateType,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i14.PageInfo<CategoriesRouteArgs> page =
      _i14.PageInfo<CategoriesRouteArgs>(name);
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({
    this.key,
    required this.navigateType,
  });

  final _i17.Key? key;

  final _i19.NavigateType navigateType;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, navigateType: $navigateType}';
  }
}

/// generated route for
/// [_i10.AddCategories]
class AddCategoriesRoute extends _i14.PageRouteInfo<void> {
  const AddCategoriesRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AddCategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCategoriesRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UpdateCategories]
class UpdateCategoriesRoute
    extends _i14.PageRouteInfo<UpdateCategoriesRouteArgs> {
  UpdateCategoriesRoute({
    _i17.Key? key,
    required _i16.Category category,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          UpdateCategoriesRoute.name,
          args: UpdateCategoriesRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateCategoriesRoute';

  static const _i14.PageInfo<UpdateCategoriesRouteArgs> page =
      _i14.PageInfo<UpdateCategoriesRouteArgs>(name);
}

class UpdateCategoriesRouteArgs {
  const UpdateCategoriesRouteArgs({
    this.key,
    required this.category,
  });

  final _i17.Key? key;

  final _i16.Category category;

  @override
  String toString() {
    return 'UpdateCategoriesRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i12.General]
class GeneralRoute extends _i14.PageRouteInfo<void> {
  const GeneralRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.OnBoard]
class OnBoardRoute extends _i14.PageRouteInfo<void> {
  const OnBoardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          OnBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
