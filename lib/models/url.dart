// To parse this JSON data, do
// final url = urlFromJson(jsonString);

import 'dart:convert';

Url urlFromJson(String str) => Url.fromJson(json.decode(str));

String urlToJson(Url data) => json.encode(data.toJson());

class Url {
    Url({
        required this.longUrl,
        this.shortUrl,
        this.urlCode,
        this.shortenDate,
    });

    String longUrl;
    String? shortUrl;
    String? urlCode;
    String? shortenDate;

    factory Url.fromJson(Map<String, dynamic> json) => Url(
        longUrl: json["long_url"],
        shortUrl: json["short_url"],
        urlCode: json["url_code"],
        shortenDate: json["shorten_date"],
    );

    Map<String, dynamic> toJson() => {
        "long_url": longUrl,
        "short_url": shortUrl,
        "url_code": urlCode,
        "shorten_date": shortenDate,
    };
}
