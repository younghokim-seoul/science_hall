import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/data/datasource/local/save_user_provider.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/entity/foot_print_entity.dart';
import 'package:science_hall/util/dev_log.dart';

final footPrintProvider = FutureProvider.autoDispose<FootPrintEntity?>((ref) async {
  final repository = ref.watch(scienceRepositoryProvider);
  var userInfo = await getUserInfo();
  if(userInfo != null){
    Log.d("::::userInfo " + userInfo.toString());
    var footPrintEntity = await repository.fetchFootPrint("fae74d8a49bc53d6");
    return footPrintEntity;
  }
  return null;
});
