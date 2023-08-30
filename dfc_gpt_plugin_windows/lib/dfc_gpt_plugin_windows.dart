import 'package:dfc_gpt_plugin_platform_interface/dfc_gpt_plugin_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// The Windows implementation of [DfcGptPluginPlatform].
class DfcGptPluginWindows extends DfcGptPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dfc_gpt_plugin_windows');

  /// Registers this class as the default instance of [DfcGptPluginPlatform]
  static void registerWith() {
    DfcGptPluginPlatform.instance = DfcGptPluginWindows();
  }

  @override
  Future<String?> getPlatformName() {
    return methodChannel.invokeMethod<String>('getPlatformName');
  }
}
