// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  int? status;
  int? postsCount;
  UserDetails? userDetails;
  List<Post>? posts;

  ProfileModel({
    this.status,
    this.postsCount,
    this.userDetails,
    this.posts,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        postsCount: json["posts_count"],
        userDetails: json["user_details"] == null
            ? null
            : UserDetails.fromJson(json["user_details"]),
        posts: json["posts"] == null
            ? []
            : List<Post>.from(json["posts"]!.map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "posts_count": postsCount,
        "user_details": userDetails?.toJson(),
        "posts": posts == null
            ? []
            : List<dynamic>.from(posts!.map((x) => x.toJson())),
      };
}

class Post {
  int? id;
  String? userId;
  String? title;
  String? slug;
  String? featuredimage;
  String? body;
  String? status;
  dynamic like;
  dynamic dislike;
  String? views;
  DateTime? createdAt;
  DateTime? updatedAt;

  Post({
    this.id,
    this.userId,
    this.title,
    this.slug,
    this.featuredimage,
    this.body,
    this.status,
    this.like,
    this.dislike,
    this.views,
    this.createdAt,
    this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        userId: json["user_id"],
        title: json["title"],
        slug: json["slug"],
        featuredimage: json["featuredimage"],
        body: json["body"],
        status: json["status"],
        like: json["like"],
        dislike: json["dislike"],
        views: json["views"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "title": title,
        "slug": slug,
        "featuredimage": featuredimage,
        "body": body,
        "status": status,
        "like": like,
        "dislike": dislike,
        "views": views,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class UserDetails {
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  dynamic currentTeamId;
  String? profilePhotoPath;
  String? about;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? profilePhotoUrl;

  UserDetails({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.about,
    this.createdAt,
    this.updatedAt,
    this.profilePhotoUrl,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
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
        "profile_photo_url": profilePhotoUrl,
      };
}
