import 'file_profile.dart';
import 'file_type.dart';

class FileInfo {
  FileInfo({this.id, this.localPath, this.profile, this.type, this.active});
  factory FileInfo.fromJson(Map<String, dynamic> json) =>
      _fileInfoFromJson(json);
  String id;
  String localPath;
  FileProfile profile;
  FileType type;
  bool active;

  static FileInfo _fileInfoFromJson(Map<String, dynamic> json) => FileInfo(
      id: json['id'] as String ?? '',
      localPath: json['localPath'] as String ?? '',
      profile: FileProfile.fromJson(json['profile']),
      type: FileTypeConverter.fileTypeFromJson(json['type']),
      active: json['active'] as bool ?? '');
  Map<String, dynamic> toJson() => _fileInfoToJson(this);
  Map<String, dynamic> _fileInfoToJson(FileInfo instance) => <String, dynamic>{
        'id': instance.id ?? '',
        'localPath': instance.localPath ?? '',
        'profile': instance.profile.toJson() ?? '',
        'type': FileTypeConverter(type: type).toJson() ?? '',
        'active': instance.active ?? ''
      };
}
