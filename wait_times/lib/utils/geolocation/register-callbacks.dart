// import 'dart:io';
//
// import 'package:app/utils/geolocation/config.dart';
// import 'package:app/utils/geolocation/headless-task.dart';
// import 'package:app/utils/geolocation/locations-to-csv.dart';
// import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;
// import 'package:flutter_cm_sensor_recorder/flutter_cm_sensor_recorder.dart';
//
// import 'package:app/utils/logger.dart';
//
// void registerBackgroundLocationCallbacks() {
//
//   final logger = LoggerSingleton.instance;
//
//   bg.BackgroundGeolocation.onLocation((bg.Location location) {
//     logger.i('[location] - $location');
//   });
//   // Fired whenever the plugin changes motion-state (stationary->moving and vice-versa)
//   bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
//     logger.i('[motionchange] - $location');
//   });
//
//   // Fired whenever the state of location-services changes.  Always fired at boot
//   bg.BackgroundGeolocation.onProviderChange((bg.ProviderChangeEvent event) {
//     logger.i('[providerchange] - $event');
//   });
//
//   // Fired whenever we enter/exit a geofence
//   bg.BackgroundGeolocation.onGeofence((bg.GeofenceEvent event) async {
//     // TODO copy this logic to the headless task callback
//     logger.i("[geofence] - $event");
//     switch(event.action) {
//       case 'ENTER':
//         // TODO add here additional code to run when entering the geofence
//         logger.i('Entered a geofence with id ${event.identifier}');
//         // await FlutterCmSensorRecorder.recordAccelerometer(duration: Duration(hours: 2));
//         await bg.BackgroundGeolocation.start();
//         await bg.BackgroundGeolocation.setConfig(insideGeofenceBackgroundLocationConfig);
//         break;
//       case 'EXIT':
//         // TODO add here all the logic to upload the collected data to the server
//         logger.i('Exited a geofence with id ${event.identifier}');
//
//         await FlutterCmSensorRecorder.stopRecording();
//         logger.i('Exited a geofence with id ${event.identifier}');
//         await bg.BackgroundGeolocation.startGeofences();
//         await bg.BackgroundGeolocation.setConfig(outsideGeofenceBackgroundLocationConfig);
//         final List locationsTracked = await bg.BackgroundGeolocation.locations;
//         await locationsToCsv(locationsTracked);
//         await bg.BackgroundGeolocation.destroyLocations();
//         // logger.i('We have ${locationsTracked.length}');
//         // TODO Remove snackbar notification
//         // SnackBar.instance.displayBar('Collected ${locationsTracked.length} datapoints');
//         break;
//       case 'DWELL':
//         break;
//     }
//     logger.i('[geofence] - $event');
//   });
//   // Android only, runs even if the app is killed
//   bg.BackgroundGeolocation.registerHeadlessTask(headlessTask);
// }