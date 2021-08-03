import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/containers/location_container.dart';
import 'package:weather_app/models/index.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Center(
        child: LocationContainer(
          builder: (BuildContext context, Location? location) {
            if (location != null) {
              return Text(location.city);
            }
            return const Text('null');
          },
        ),
      ),
    );
  }
}
