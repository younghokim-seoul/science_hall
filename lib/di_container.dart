import 'package:get_it/get_it.dart';
import 'package:science_hall/presentation/main/main_view_model.dart';


final it = GetIt.instance;


Future<void> init() async {
  it.registerFactory(() => MainViewModel());


}