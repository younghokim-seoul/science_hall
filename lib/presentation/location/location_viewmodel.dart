import 'package:arc/arc_subject.dart';
import 'package:science_hall/data/datasource/local/device_info_provider.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/repository/science_repository.dart';
import 'package:science_hall/presentation/base/viewmodel_interface.dart';
import 'package:science_hall/presentation/location/location_provider.dart';
import 'package:science_hall/util/dev_log.dart';

class LocationViewModel implements ViewModelInterface{

  final scienceRepository = it<ScienceRepository>();
  final viewState = ArcSubject<LocationState>(seed : LocationState(isLoading: true, location: null));
  var locationState = LocationState(isLoading: true, location: null);

  @override
  disposeAll() {
    viewState.close();
  }

  @override
  loadState(state) {
    Log.i("LoginViewModel loadState $state");
    state = state as LocationState;
    viewState.val = state;
  }

  Future<void> fetchLatestPlace() async{
    Log.v("::::[fetchLatestPlace]");
   var model = await fetchLatestExhibition();

   try{
     locationState = locationState.copyWith(
       isLoading: false,
       location: model,
       error: null,
     );
   }catch (e,print) {
     Log.d(":::[fetchBeacon error]  " + print.toString());
     locationState = locationState.copyWith(error: e);
   }
   loadState(locationState);
  }

}