import 'dart:convert';

class NoteResponse {
    int? id;
    String? title;
    String? createby;
    String? text;
    DateTime? lastopened;

    NoteResponse({
        this.id,
        this.title,
        this.createby,
        this.text,
        this.lastopened,
    });

    factory NoteResponse.fromRawJson(String str) => NoteResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory NoteResponse.fromJson(Map<String, dynamic> json) => NoteResponse(
        id: json["id"],
        title: json["title"],
        createby: json["createby"],
        text: json["text"],
        lastopened: json["lastopened"] == null ? null : DateTime.parse(json["lastopened"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "createby": createby,
        "text": text,
        "lastopened": lastopened?.toIso8601String(),
    };
}
