// To parse this JSON data, do
//
//     final appBarModel = appBarModelFromJson(jsonString);

import 'dart:convert';

AppBarModel appBarModelFromJson(String str) =>
    AppBarModel.fromJson(json.decode(str));

String appBarModelToJson(AppBarModel data) => json.encode(data.toJson());

class AppBarModel {
  List<AppBarModelDatum>? data;
  Meta? meta;

  AppBarModel({
    this.data,
    this.meta,
  });

  factory AppBarModel.fromJson(Map<String, dynamic> json) => AppBarModel(
        data: json["data"] == null
            ? []
            : List<AppBarModelDatum>.from(
                json["data"]!.map((x) => AppBarModelDatum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class AppBarModelDatum {
  int? id;
  PurpleAttributes? attributes;

  AppBarModelDatum({
    this.id,
    this.attributes,
  });

  factory AppBarModelDatum.fromJson(Map<String, dynamic> json) =>
      AppBarModelDatum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : PurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class PurpleAttributes {
  String? slug;
  String? heading;
  String? subheading;
  String? footer;
  Images? slider;
  List<Card>? card;
  Images? images;

  PurpleAttributes({
    this.slug,
    this.heading,
    this.subheading,
    this.footer,
    this.slider,
    this.card,
    this.images,
  });

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
        slug: json["slug"],
        heading: json["heading"],
        subheading: json["subheading"],
        footer: json["footer"],
        slider: json["slider"] == null ? null : Images.fromJson(json["slider"]),
        card: json["card"] == null
            ? []
            : List<Card>.from(json["card"]!.map((x) => Card.fromJson(x))),
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "heading": heading,
        "subheading": subheading,
        "footer": footer,
        "slider": slider?.toJson(),
        "card": card == null
            ? []
            : List<dynamic>.from(card!.map((x) => x.toJson())),
        "images": images?.toJson(),
      };
}

class Card {
  int? id;
  String? title;
  String? subtitle;
  String? button;

  Card({
    this.id,
    this.title,
    this.subtitle,
    this.button,
  });

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        button: json["button"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "button": button,
      };
}

class Images {
  List<ImagesDatum>? data;

  Images({
    this.data,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: json["data"] == null
            ? []
            : List<ImagesDatum>.from(
                json["data"]!.map((x) => ImagesDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ImagesDatum {
  int? id;
  FluffyAttributes? attributes;

  ImagesDatum({
    this.id,
    this.attributes,
  });

  factory ImagesDatum.fromJson(Map<String, dynamic> json) => ImagesDatum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : FluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class FluffyAttributes {
  String? name;
  String? url;

  FluffyAttributes({
    this.name,
    this.url,
  });

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) =>
      FluffyAttributes(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class Meta {
  Pagination? pagination;

  Meta({
    this.pagination,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
      };
}

class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
