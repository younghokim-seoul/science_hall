

import 'package:freezed_annotation/freezed_annotation.dart';

part 'foot_print_entity.freezed.dart';
part 'foot_print_entity.g.dart';
@freezed
class FootPrintEntity with _$FootPrintEntity {
  factory FootPrintEntity({
    required List<int> result,
  }) = _FootPrintEntity;

  factory FootPrintEntity.fromJson(Map<String, dynamic> json) => _$FootPrintEntityFromJson(json);
}