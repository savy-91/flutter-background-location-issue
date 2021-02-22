
import 'package:app/utils/geolocation/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;

class DebugPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            Text(
              "Tracking",
              style: Theme.of(context).textTheme.headline4,
            ),
            MaterialButton(
                color: Theme.of(context).primaryColor,
                child: Text('Start background tracking', style: Theme.of(context).textTheme.button,),
                onPressed: () async {
                  await bg.BackgroundGeolocation.start();
                }
            ),
            MaterialButton(
                color: Theme.of(context).primaryColor,
                child: Text('Reset', style: Theme.of(context).textTheme.button,),
                onPressed:  () async {
                  await bg.BackgroundGeolocation.reset(insideGeofenceBackgroundLocationConfig);
                }
            ),
            // MaterialButton(
            //     color: Theme.of(context).primaryColor,
            //     child: Text('Start geofence-only tracking', style: Theme.of(context).textTheme.button,),
            //     onPressed: () async {
            //       await bg.BackgroundGeolocation.reset(insideGeofenceBackgroundLocationConfig);
            //       await bg.BackgroundGeolocation.startGeofences();
            //     }
            // ),
            MaterialButton(
                color: Theme.of(context).primaryColor,
                child: Text('Stop background tracking', style: Theme.of(context).textTheme.button,),
                onPressed: () async {
                  await bg.BackgroundGeolocation.stop();
                }
            ),
            MaterialButton(
                color: Theme.of(context).primaryColor,
                child: Text('Clear location data', style: Theme.of(context).textTheme.button,),
                onPressed: () => bg.BackgroundGeolocation.destroyLocations()
            ),
          ],
        ),
      ),
    ),
  );
}
