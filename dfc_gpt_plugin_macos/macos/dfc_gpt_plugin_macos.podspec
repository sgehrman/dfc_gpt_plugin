#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'dfc_gpt_plugin_macos'
  s.version          = '0.0.1'
  s.summary          = 'A macOS implementation of the dfc_gpt_plugin plugin.'
  s.description      = <<-DESC
  A macOS implementation of the dfc_gpt_plugin plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :type => 'BSD', :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.vendored_libraries = 'Libraries/**/*'

  s.platform = :osx
  s.osx.deployment_target = '11.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end

