import 'package:dfc_gpt_plugin_platform_interface/dfc_gpt_plugin_platform_interface.dart';
import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/services.dart';

/// An implementation of [DfcGptPluginPlatform] that uses method channels.
class MethodChannelDfcGptPlugin extends DfcGptPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dfc_gpt_plugin');

  @override
  Future<String?> getPlatformName() {
    return methodChannel.invokeMethod<String>('getPlatformName');
  }
}
