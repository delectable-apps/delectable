import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'delectable_platform_interface.dart';

/// An implementation of [DelectablePlatform] that uses method channels.
class MethodChannelDelectable extends DelectablePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('delectable');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
