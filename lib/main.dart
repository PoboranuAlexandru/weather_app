import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/location_api.dart';
import 'package:weather_app/epics/app_epics.dart';
import 'package:weather_app/models/index.dart';
import 'package:weather_app/presentation/homepage.dart';
import 'package:weather_app/reducer/reducer.dart';

Future<void> main() async {
  final Client client = Client();
  final LocationApi locationApi = LocationApi(client: client);
  final AppEpics epic = AppEpics(locationApi: locationApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  );

  store.dispatch(const GetLocation());
  runApp(MyLocation(store: store));
}

class MyLocation extends StatelessWidget {
  const MyLocation({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
