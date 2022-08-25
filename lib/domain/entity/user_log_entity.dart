
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_log_entity.freezed.dart';
part 'user_log_entity.g.dart';

@freezed
class UserLogEntity with _$UserLogEntity {
  factory UserLogEntity({
    required int pk,
    required int sex,
    required int age_group,
    required String mac_address,
  }) = _UserLogEntity;

  factory UserLogEntity.fromJson(Map<String, dynamic> json) => _$UserLogEntityFromJson(json);
}
