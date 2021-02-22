import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;

/// Receives all events from BackgroundGeolocation while app is terminated:
void headlessTask(bg.HeadlessEvent headlessEvent) async {
  print('[HeadlessTask]: ${headlessEvent}');

  // Implement a `case` for only those events you're interested in.
  switch(headlessEvent.name) {
    case bg.Event.TERMINATE:
      bg.State state = headlessEvent.event;
      print('- State: ${state}');
      break;
    case bg.Event.HEARTBEAT:
      bg.HeartbeatEvent event = headlessEvent.event;
      print('- HeartbeatEvent: ${event}');
      break;
    case bg.Event.LOCATION:
      bg.Location location = headlessEvent.event;
      print('- Location: ${location}');
      break;
    case bg.Event.MOTIONCHANGE:
      bg.Location location = headlessEvent.event;
      print('- Location: ${location}');
      break;
    case bg.Event.GEOFENCE:
      // TODO add here the same geofence processing we do when we are in foreground
      // or on iOS
      bg.GeofenceEvent geofenceEvent = headlessEvent.event;
      print('- GeofenceEvent: ${geofenceEvent}');
      break;
    case bg.Event.GEOFENCESCHANGE:
      bg.GeofencesChangeEvent event = headlessEvent.event;
      print('- GeofencesChangeEvent: ${event}');
      break;
    case bg.Event.SCHEDULE:
      bg.State state = headlessEvent.event;
      print('- State: ${state}');
      break;
    case bg.Event.ACTIVITYCHANGE:
      bg.ActivityChangeEvent event = headlessEvent.event;
      print('ActivityChangeEvent: ${event}');
      break;
    case bg.Event.HTTP:
      bg.HttpEvent response = headlessEvent.event;
      print('HttpEvent: ${response}');
      break;
    case bg.Event.POWERSAVECHANGE:
      bool enabled = headlessEvent.event;
      print('ProviderChangeEvent: ${enabled}');
      break;
    case bg.Event.CONNECTIVITYCHANGE:
      bg.ConnectivityChangeEvent event = headlessEvent.event;
      print('ConnectivityChangeEvent: ${event}');
      break;
    case bg.Event.ENABLEDCHANGE:
      bool enabled = headlessEvent.event;
      print('EnabledChangeEvent: ${enabled}');
      break;
  }
}