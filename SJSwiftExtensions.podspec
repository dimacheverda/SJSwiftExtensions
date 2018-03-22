#
# Be sure to run `pod lib lint SJSwiftExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SJSwiftExtensions'
  s.version          = '0.1.2'
  s.summary          = 'Common extension for Foundation and UIKit classes'

  s.description      = <<-DESC
  Common extension for basic classes and types to speed up development time.
                       DESC

  s.homepage         = 'https://github.com/dimacheverda/SJSwiftExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dimacheverda' => 'cheverda@sjinnovation.com' }
  s.source           = { :git => 'https://github.com/dimacheverda/SJSwiftExtensions.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/cheverda'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'
  
  s.source_files = 'SJSwiftExtensions/Classes/**/*'

  s.frameworks = 'UIKit', 'Foundation'
end
