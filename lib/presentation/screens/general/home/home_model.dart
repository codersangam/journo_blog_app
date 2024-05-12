// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  int? status;
  List<Post>? allPosts;
  List<Post>? popularPosts;

  HomeModel({
    this.status,
    this.allPosts,
    this.popularPosts,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        status: json["status"],
        allPosts: json["all_posts"] == null
            ? []
            : List<Post>.from(json["all_posts"]!.map((x) => Post.fromJson(x))),
        popularPosts: json["popular_posts"] == null
            ? []
            : List<Post>.from(
                json["popular_posts"]!.map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "all_posts": allPosts == null
            ? []
            : List<dynamic>.from(allPosts!.map((x) => x.toJson())),
        "popular_posts": popularPosts == null
            ? []
            : List<dynamic>.from(popularPosts!.map((x) => x.toJson())),
      };
}

class Post {
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  dynamic currentTeamId;
  String? profilePhotoPath;
  String? about;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? userId;
  String? title;
  String? slug;
  String? featuredimage;
  String? body;
  int? status;
  dynamic like;
  dynamic dislike;
  int? views;
  String? profilePhotoUrl;

  Post({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.about,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.title,
    this.slug,
    this.featuredimage,
    this.body,
    this.status,
    this.like,
    this.dislike,
    this.views,
    this.profilePhotoUrl,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        currentTeamId: json["current_team_id"],
        profilePhotoPath: json["profile_photo_path"],
        about: json["about"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        userId: json["user_id"],
        title: json["title"],
        slug: json["slug"],
        featuredimage: json["featuredimage"],
        body: json["body"],
        status: json["status"],
        like: json["like"],
        dislike: json["dislike"],
        views: json["views"],
        profilePhotoUrl: json["profile_photo_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "current_team_id": currentTeamId,
        "profile_photo_path": profilePhotoPath,
        "about": about,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "user_id": userId,
        "title": title,
        "slug": slug,
        "featuredimage": featuredimage,
        "body": body,
        "status": status,
        "like": like,
        "dislike": dislike,
        "views": views,
        "profile_photo_url": profilePhotoUrl,
      };
}
