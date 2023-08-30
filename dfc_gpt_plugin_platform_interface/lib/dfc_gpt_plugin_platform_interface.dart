import 'package:dfc_gpt_plugin_platform_interface/src/method_channel_dfc_gpt_plugin.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// The interface that implementations of dfc_gpt_plugin must implement.
///
/// Platform implementations should extend this class
/// rather than implement it as `DfcGptPlugin`.
/// Extending this class (using `extends`) ensures that the subclass will get
/// the default implementation, while platform implementations that `implements`
///  this interface will be broken by newly added [DfcGptPluginPlatform] methods.
abstract class DfcGptPluginPlatform extends PlatformInterface {
  /// Constructs a DfcGptPluginPlatform.
  DfcGptPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DfcGptPluginPlatform _instance = MethodChannelDfcGptPlugin();

  /// The default instance of [DfcGptPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDfcGptPlugin].
  static DfcGptPluginPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [DfcGptPluginPlatform] when they register themselves.
  static set instance(DfcGptPluginPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  /// Return the current platform name.
  Future<String?> getPlatformName();
}
