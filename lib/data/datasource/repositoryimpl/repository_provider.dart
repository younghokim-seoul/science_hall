
import 'package:arc/arc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/entity/token_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:science_hall/util/dev_log.dart';


final tokenProvider = Provider.autoDispose<void>((ref) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  Log.d(":::::::::::::::::token ${pref.getString("token")}");
  if (pref.getString("token").isNullOrEmpty) {
    final repository = ref.watch(scienceRepositoryProvider);
    Map<String, dynamic> param = {};
    param['username'] = "anonymous";
    param['password'] = "anonymous";
    TokenEntity entity = await repository.getToken(param);
    Log.d(":::::::::::::::::onNext ${entity.access}");
    await pref.setString("token", entity.access);
  }
});

final eventProvider = FutureProvider.autoDispose((ref){
  final repository = ref.watch(scienceRepositoryProvider);
  return repository.fetchEvents();
});