// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i13;
import 'package:journo_blog_app/presentation/screens/auth/auth_imports.dart'
    as _i3;
import 'package:journo_blog_app/presentation/screens/auth/login/login_imports.dart'
    as _i4;
import 'package:journo_blog_app/presentation/screens/auth/register/register_imports.dart'
    as _i2;
import 'package:journo_blog_app/presentation/screens/general/general_imports.dart'
    as _i7;
import 'package:journo_blog_app/presentation/screens/general/home/home_imports.dart'
    as _i5;
import 'package:journo_blog_app/presentation/screens/general/home/home_model.dart'
    as _i14;
import 'package:journo_blog_app/presentation/screens/general/tags/add_tags/add_tags_imports.dart'
    as _i9;
import 'package:journo_blog_app/presentation/screens/general/tags/tags_imports.dart'
    as _i6;
import 'package:journo_blog_app/presentation/screens/general/tags/tags_model.dart'
    as _i12;
import 'package:journo_blog_app/presentation/screens/general/tags/update_tags/update_tags_imports.dart'
    as _i10;
import 'package:journo_blog_app/presentation/screens/onboard/onboard_imports.dart'
    as _i8;
import 'package:journo_blog_app/presentation/screens/splash/splash_imports.dart'
    as _i1;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Register(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Auth(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Login(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomeDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
      );
    },
    TagsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Tags(),
      );
    },
    GeneralRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.General(),
      );
    },
    OnBoardRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnBoard(),
      );
    },
    AddTagsRoute.name: (routeData) {
      return _i11.AutoRoutePage<_i12.TagsModel>(
        routeData: routeData,
        child: const _i9.AddTags(),
      );
    },
    UpdateTagsRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateTagsRouteArgs>();
      return _i11.AutoRoutePage<_i12.TagsModel>(
        routeData: routeData,
        child: _i10.UpdateTags(
          key: args.key,
          tag: args.tag,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Register]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Auth]
class AuthRoute extends _i11.PageRouteInfo<void> {
  const AuthRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Login]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeDetails]
class HomeDetailsRoute extends _i11.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    _i13.Key? key,
    required _i14.Post post,
    required String imagePath,
    List<_i11.PageRouteInfo>? children,
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

  static const _i11.PageInfo<HomeDetailsRouteArgs> page =
      _i11.PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final _i13.Key? key;

  final _i14.Post post;

  final String imagePath;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
}

/// generated route for
/// [_i6.Tags]
class TagsRoute extends _i11.PageRouteInfo<void> {
  const TagsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.General]
class GeneralRoute extends _i11.PageRouteInfo<void> {
  const GeneralRoute({List<_i11.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OnBoard]
class OnBoardRoute extends _i11.PageRouteInfo<void> {
  const OnBoardRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OnBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.AddTags]
class AddTagsRoute extends _i11.PageRouteInfo<void> {
  const AddTagsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AddTagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UpdateTags]
class UpdateTagsRoute extends _i11.PageRouteInfo<UpdateTagsRouteArgs> {
  UpdateTagsRoute({
    _i13.Key? key,
    required _i12.Tag tag,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          UpdateTagsRoute.name,
          args: UpdateTagsRouteArgs(
            key: key,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateTagsRoute';

  static const _i11.PageInfo<UpdateTagsRouteArgs> page =
      _i11.PageInfo<UpdateTagsRouteArgs>(name);
}

class UpdateTagsRouteArgs {
  const UpdateTagsRouteArgs({
    this.key,
    required this.tag,
  });

  final _i13.Key? key;

  final _i12.Tag tag;

  @override
  String toString() {
    return 'UpdateTagsRouteArgs{key: $key, tag: $tag}';
  }
}
