import 'package:arc/arc_subject.dart';
import 'package:science_hall/presentation/base/viewmodel_interface.dart';
import 'package:science_hall/util/dev_log.dart';

enum BottomTabViewState { home, location, preview, event }

class MainViewModel implements ViewModelInterface {
  var tabState = ArcSubject<BottomTabViewState>();

  @override
  disposeAll() {
    Log.i("BottomTabViewModel disposeAll");
    tabState.close();
  }

  @override
  loadState(state) {
    Log.d("loadState");
  }
}
