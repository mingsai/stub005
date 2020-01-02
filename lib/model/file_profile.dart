import 'package:meta/meta.dart';

class FileProfile {
  FileProfile(
      {@required this.dateCreated,
      this.dateModified,
      this.description,
      this.remoteURI = ''});

  factory FileProfile.fromJson(Map<String, dynamic> json) =>
      _fileProfileFromJson(json);

  DateTime dateCreated = DateTime.now();
  DateTime dateModified;
  String description;
  String remoteURI;

  static FileProfile _fileProfileFromJson(Map<String, dynamic> json) =>
      FileProfile(
          dateCreated: DateTime.tryParse(json['dateCreated']) ?? DateTime.now(),
          dateModified:
              DateTime.tryParse(json['dateModified']) ?? DateTime.now(),
          description: json['description'] as String,
          remoteURI: json['remoteURI'] as String);

  Map<String, dynamic> toJson() => _fileProfileToJson(this);
  Map<String, dynamic> _fileProfileToJson(FileProfile instance) =>
      <String, dynamic>{
        'dateCreated': instance.dateCreated.toIso8601String() ??
            DateTime.now().toIso8601String(),
        'dateModified': instance.dateModified.toIso8601String() ?? '',
        'description': instance.description ?? '',
        'remoteURI': instance.remoteURI ?? ''
      };
}
