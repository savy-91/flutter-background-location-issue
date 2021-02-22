import 'package:app/app.dart';
import 'package:app/utils/geolocation/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;

Future<void> beforeRun() async {
  WidgetsFlutterBinding.ensureInitialized();

  // registerBackgroundLocationCallbacks();

  // await bg.BackgroundGeolocation.ready(insideGeofenceBackgroundLocationConfig);
  await bg.BackgroundGeolocation.ready(insideGeofenceBackgroundLocationConfig);
  return;
}


void main() async {
  await beforeRun();
  runApp(WaitTimesApp());
}
