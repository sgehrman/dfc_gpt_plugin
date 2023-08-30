import 'package:dfc_gpt_plugin_platform_interface/dfc_gpt_plugin_platform_interface.dart';

DfcGptPluginPlatform get _platform => DfcGptPluginPlatform.instance;

/// Returns the name of the current platform.
Future<String> getPlatformName() async {
  final platformName = await _platform.getPlatformName();
  if (platformName == null) {
    throw Exception('Unable to get platform name.');
  }

  return platformName;
}
