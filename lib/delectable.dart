
import 'delectable_platform_interface.dart';

class Delectable {
  Future<String?> getPlatformVersion() {
    return DelectablePlatform.instance.getPlatformVersion();
  }
}
