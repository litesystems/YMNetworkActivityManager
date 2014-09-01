#
# Be sure to run `pod lib lint YMNetworkActivityManager.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YMNetworkActivityManager"
  s.version          = "1.1.0"
  s.summary          = "Manager class of the network activity indicator."
  s.description      = <<-DESC
                       YMNetworkActivityManager is a manager class of the network activity indicator in the status bar.
                       DESC
  s.homepage         = "https://github.com/ymyzk/YMNetworkActivityManager"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Yusuke Miyazaki" => "miyazaki.dev@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/YMNetworkActivityManager.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '6.1'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  # s.resource_bundles = {
  #   'YMNetworkActivityManager' => ['Pod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
