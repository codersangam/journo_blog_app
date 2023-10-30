import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:journo_blog_app/presentation/screens/general/home/home_model.dart';
import 'package:journo_blog_app/presentation/screens/general/profile/profile_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';
import '../models/message_model.dart';

class PostsRepo extends ApiClient {
  PostsRepo();

  Future<HomeModel> getAllPosts() async {
    try {
      final response = await getRequest(path: ApiEndpointUrls.posts);
      if (response.statusCode == 200) {
        final responseData = homeModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        HomeModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      HomeModel();
    }
    return HomeModel();
  }

  Future<ProfileModel> getUserPosts() async {
    try {
      final response = await getRequest(
          path: ApiEndpointUrls.userPosts, isTokenRequired: true);
      if (response.statusCode == 200) {
        final responseData = profileModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        ProfileModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      ProfileModel();
    }
    return ProfileModel();
  }

  Future<MessageModel> addNewPost(
    String title,
    String slug,
    String categoryId,
    String tagId,
    String body,
    String userId,
    String filePath,
    String fileName,
  ) async {
    final formData = FormData.fromMap({
      'title': title,
      'slug': slug,
      'categories': categoryId,
      'tags': tagId,
      'body': body,
      'status': '1',
      'user_id': userId,
      'featuredimage':
          await MultipartFile.fromFile(filePath, filename: fileName),
    });
    try {
      final response = await postRequest(
          path: ApiEndpointUrls.addPosts,
          body: formData,
          isTokenRequired: true);
      if (response.statusCode == 200) {
        final responseData = messageModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      MessageModel();
    }
    return MessageModel();
  }
}
