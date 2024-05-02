import 'package:flutter_test/flutter_test.dart';
import 'package:delectable/delectable.dart';
import 'package:delectable/delectable_platform_interface.dart';
import 'package:delectable/delectable_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDelectablePlatform
    with MockPlatformInterfaceMixin
    implements DelectablePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DelectablePlatform initialPlatform = DelectablePlatform.instance;

  test('$MethodChannelDelectable is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDelectable>());
  });

  test('getPlatformVersion', () async {
    Delectable delectablePlugin = Delectable();
    MockDelectablePlatform fakePlatform = MockDelectablePlatform();
    DelectablePlatform.instance = fakePlatform;

    expect(await delectablePlugin.getPlatformVersion(), '42');
  });
}
