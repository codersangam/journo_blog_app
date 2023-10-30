import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:journo_blog_app/data/repositories/repository.dart';
import 'package:journo_blog_app/presentation/enums/navigate_type.dart';
import 'package:journo_blog_app/presentation/router/router_imports.gr.dart';
import 'package:journo_blog_app/presentation/screens/general/tags/tags_model.dart';
import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_quill/flutter_quill.dart';

import '../../../../core/constants/my_colors.dart';
import '../categories/categories_model.dart';

part 'add_posts.dart';
part 'add_posts_view_model.dart';
