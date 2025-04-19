#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint zebrautil.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'zebrautil'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin for working with zebra printers'
  s.description      = <<-DESC
A flutter plugin for working with zebra printers
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Anthony Rubio' => 'rubionn27@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*.{m,swift}', 'Classes/ZebraUtilPlugin.h'
  s.public_header_files = 'Classes/ZebraUtilPlugin.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  
#  s.source_files = 'Classes//*{.h,.a,.swift,.mm,.m,.hpp}'
#  s.resources = 'Resources//'
  s.static_framework = true
  
  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
  s.preserve_paths = 'libZSDK_API.a'
  s.vendored_libraries = 'libZSDK_API.a'
  s.frameworks         = 'ExternalAccessory', 'QuartzCore'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework ExternalAccessory -framework QuartzCore -lZSDK_API' }
end
