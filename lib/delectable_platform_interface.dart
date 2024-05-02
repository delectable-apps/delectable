import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'delectable_method_channel.dart';

abstract class DelectablePlatform extends PlatformInterface {
  /// Constructs a DelectablePlatform.
  DelectablePlatform() : super(token: _token);

  static final Object _token = Object();

  static DelectablePlatform _instance = MethodChannelDelectable();

  /// The default instance of [DelectablePlatform] to use.
  ///
  /// Defaults to [MethodChannelDelectable].
  static DelectablePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DelectablePlatform] when
  /// they register themselves.
  static set instance(DelectablePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
