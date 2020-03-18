#
# Be sure to run `pod lib lint FUDLog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FUDLog'
  s.version          = '0.1.0'
  s.summary          = 'A short description of FUDLog.'

  s.description      = <<-DESC
fudlog
                       DESC

  s.homepage         = 'https://github.com/FX99/FUDLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fudolan' => 'fudolan@163.com' }
  s.source           = { :git => 'https://github.com/FX99/FUDLog.git', :tag => s.version.to_s }
  # s.source           = { :path => 'FUDLog/',}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FUDLog/**/*.{c,cpp,h,m,mm}'
  
  # s.resource_bundles = {
  #   'FUDLog' => ['FUDLog/Assets/*.png']
  # }

  s.public_header_files = 'FUDLog/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
