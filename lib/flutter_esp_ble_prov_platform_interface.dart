import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_esp_ble_prov_method_channel.dart';

abstract class FlutterEspBleProvPlatform extends PlatformInterface {
  /// Constructs a FlutterEspBleProvPlatform.
  FlutterEspBleProvPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterEspBleProvPlatform _instance = MethodChannelFlutterEspBleProv();

  /// The default instance of [FlutterEspBleProvPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterEspBleProv].
  static FlutterEspBleProvPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterEspBleProvPlatform] when
  /// they register themselves.
  static set instance(FlutterEspBleProvPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
