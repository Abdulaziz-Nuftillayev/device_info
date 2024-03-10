import 'dart:io';

import 'package:advanced_flutter/peresentation/widgets/android_device_info_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/ios_device_info_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Info'),
      ),
      body: Platform.isAndroid
          ? showAndroidInfo()
          : Platform.isIOS
              ? showIOSInfo
              : Container(),
    );
  }
}
