import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/location_api.dart';
import 'package:weather_app/models/index.dart';

class AppEpics {
  AppEpics({required LocationApi locationApi}) : _locationApi = locationApi;

  final LocationApi _locationApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocation),
    ]);
  }

  Stream<AppAction> _getLocation(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetLocationStart action) => _locationApi.getLocation())
        .map((Location location) => GetLocation.successful(location))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
  }
}
