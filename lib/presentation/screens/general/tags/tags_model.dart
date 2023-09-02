// To parse this JSON data, do
//
//     final tagsModel = tagsModelFromJson(jsonString);

import 'dart:convert';

TagsModel tagsModelFromJson(String str) => TagsModel.fromJson(json.decode(str));

String tagsModelToJson(TagsModel data) => json.encode(data.toJson());

class TagsModel {
  int? status;
  int? tagsCount;
  List<Tag>? tags;

  TagsModel({
    this.status,
    this.tagsCount,
    this.tags,
  });

  factory TagsModel.fromJson(Map<String, dynamic> json) => TagsModel(
        status: json["status"],
        tagsCount: json["tags_count"],
        tags: json["tags"] == null
            ? []
            : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "tags_count": tagsCount,
        "tags": tags == null
            ? []
            : List<dynamic>.from(tags!.map((x) => x.toJson())),
      };
}

class Tag {
  int? id;
  String? title;
  String? slug;
  DateTime? createdAt;
  DateTime? updatedAt;

  Tag({
    this.id,
    this.title,
    this.slug,
    this.createdAt,
    this.updatedAt,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "slug": slug,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
