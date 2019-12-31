import 'package:meta/meta.dart';

class ShareProfile {
  ShareProfile(
      {@required this.dateShared,
      @required this.description,
      @required this.remoteURI,
      @required this.sharedBy,
      this.sharedPublic = false});
  factory ShareProfile.fromJson(Map<String, dynamic> json) =>
      _shareProfileFromJson(json);

  DateTime dateShared;
  String description;
  String remoteURI;
  String sharedBy;
  bool sharedPublic;

  static ShareProfile _shareProfileFromJson(Map<String, dynamic> json) =>
      ShareProfile(
        dateShared: DateTime.tryParse(json['dateShared']),
        description: json['description'] as String ?? '',
        remoteURI: json['remoteURI'] as String ?? '',
        sharedBy: json['sharedBy'] as String ?? '',
        sharedPublic: json['sharedPublic'] as bool ?? true,
      );
  Map<String, dynamic> toJson() => _shareProfileToJson(this);
  Map<String, dynamic> _shareProfileToJson(ShareProfile instance) =>
      <String, dynamic>{
        'dateShared': instance.dateShared.toIso8601String() ??
            DateTime.now().toIso8601String(),
        'description': instance.description ?? '',
        'remoteURI': instance.remoteURI ?? '',
        'sharedBy': instance.sharedBy ?? '',
        'sharedPublic': instance.sharedPublic ?? true
      };
}
