import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:journo_blog_app/data/repositories/repository.dart';
import 'package:journo_blog_app/presentation/router/router_imports.gr.dart';
import 'package:journo_blog_app/presentation/screens/general/home/home_model.dart';
import 'package:journo_blog_app/presentation/screens/general/profile/profile_model.dart'
    hide Post;
import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constants/my_colors.dart';

part 'home.dart';
part 'home_details.dart';
part 'home.i18n.dart';
part 'home_view_model.dart';
