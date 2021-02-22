import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;

final insideGeofenceBackgroundLocationConfig = bg.Config(
  // We can avoid using the internal sqlite database
  // since we should be storing the data ourselves
  // For now we can try using it and accessing the locations afterwards
    persistMode: bg.Config.PERSIST_MODE_ALL,
    stopTimeout: 15,
    // Needed to trigger the geofence event even thoug we are already inside,
    // useful if the user opens the app when they are in the border
    geofenceInitialTriggerEntry: true,
    // Android only
    allowIdenticalLocations: true,
    // Android only
    foregroundService: true,
    //  iOS only
    preventSuspend: true,
    // iOS only, used by preventSuspend
    heartbeatInterval: 60,
    // Android only, saves battery and gets location in batch
    // deferTime: 2000,
    // Android only, tries to fix the update frequency
    // locationUpdateInterval: 1000,
    // Needed to get consistent updates, we should test what happens with it enabled
    // disableElasticity: true,
    // iOS only
    activityType: bg.Config.ACTIVITY_TYPE_AUTOMOTIVE_NAVIGATION,
    // Android only, needed to be able to run code after the app has been killed
    //  will be used to collect sensor data
    enableHeadless: false,
    desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
    distanceFilter: 5.0,
    stopOnTerminate: false,
    startOnBoot: true,
    debug: true,
    logLevel: bg.Config.LOG_LEVEL_VERBOSE,
    // Upload url to upload everything with a POST call
    // url: 'https://enj3v03g1dv07j5.m.pipedream.net',
    autoSync: false,
    batchSync: false
);