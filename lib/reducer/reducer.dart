import 'package:redux/redux.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, GetLocation>(_getLocation),
  TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState, GetLocationError>(_getLocationError),
]);

AppState _getLocation(AppState state, GetLocation action) {
  return state.rebuild((AppStateBuilder b) {});
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.location = action.location.toBuilder();
  });
}

AppState _getLocationError(AppState state, GetLocationError action) {
  return state.rebuild((AppStateBuilder b) {});
}
