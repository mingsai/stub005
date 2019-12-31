import 'package:meta/meta.dart';

enum FileType { audio, image, other, text, video }

class FileTypeConverter {
  FileTypeConverter({@required this.type});
  FileType type;

  static FileType fileTypeFromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'audio':
        return FileType.audio;
      case 'image':
        return FileType.image;
      case 'text':
        return FileType.text;
      case 'video':
        return FileType.video;
      default:
        return FileType.other;
    }
  }

  Map<String, dynamic> toJson() => _fileTypeToJson(type);
  Map<String, dynamic> _fileTypeToJson(FileType type) {
    switch (type) {
      case FileType.audio:
        return <String, dynamic>{'type': 'audio'};
        break;
      case FileType.image:
        return <String, dynamic>{'type': 'image'};
        break;
      case FileType.text:
        return <String, dynamic>{'type': 'text'};
        break;
      case FileType.video:
        return <String, dynamic>{'type': 'video'};
        break;
      default:
        return <String, dynamic>{'type': 'other'};
    }
  }
}
