import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/categories/categories_model.dart';
import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';
import '../models/message_model.dart';

class CategoriesRepo extends ApiClient {
  CategoriesRepo();

  Future<CategoriesModel> getAllCategories() async {
    try {
      final response = await getRequest(path: ApiEndpointUrls.categories);
      if (response.statusCode == 200) {
        final responseData = categoriesModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        CategoriesModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      CategoriesModel();
    }
    return CategoriesModel();
  }

  Future<MessageModel> addNewCategories(String title, String slug) async {
    Map body = {"title": title, "slug": slug};
    try {
      final response = await postRequest(
          path: ApiEndpointUrls.addCategories,
          body: body,
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

  Future<MessageModel> updateCategories(
      String id, String title, String slug) async {
    Map body = {"id": id, "title": title, "slug": slug};
    try {
      final response = await postRequest(
          path: ApiEndpointUrls.updateCategories,
          body: body,
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

  Future<MessageModel> deleteCategories(String id) async {
    try {
      final response = await postRequest(
          path: "${ApiEndpointUrls.deleteCategories}/$id",
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
