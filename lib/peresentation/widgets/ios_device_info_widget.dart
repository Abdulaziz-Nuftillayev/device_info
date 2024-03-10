import 'package:advanced_flutter/peresentation/widgets/items_widget.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'android_device_info_widget.dart';

showIOSInfo() {
  return FutureBuilder(
      future: deviceInfoPlugin.iosInfo,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.error.toString(),
            ),
          );
        } else if(snapshot.hasData) {
          IosDeviceInfo info = snapshot.data!;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                item('Device Model', info.model),
                item('Device Name', info.name),
                item('System Name', info.systemName),
                item('System Version', info.systemVersion),
                item('Device Is Physical', info.isPhysicalDevice.toString()),
              ],
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      }
  );
}
