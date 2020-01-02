import 'package:meta/meta.dart';
import 'share_profile.dart';

class ShareInfo {
  ShareInfo(
      {@required this.fileid, @required this.profile, this.active = true});
  factory ShareInfo.fromJson(Map<String, dynamic> json) =>
      _shareInfoFromJson(json);

  String fileid;
  ShareProfile profile;
  bool active;

  static ShareInfo _shareInfoFromJson(Map<String, dynamic> json) => ShareInfo(
      fileid: json['fileid'] as String ?? '',
      profile: ShareProfile.fromJson(json['shareProfile']),
      active: json['active']);
  Map<String, dynamic> toJson() => _shareInfoToJson(this);
  Map<String, dynamic> _shareInfoToJson(ShareInfo instance) =>
      <String, dynamic>{
        // Map<String, dynamic> profile = (instance.profile != null) ? instance.profile.toJson() : null;
        'fileid': instance.fileid ?? '',
        'shareProfile': instance.profile.toJson() ?? '',
        'active': instance.active.toString()
      };
}
