#
# Be sure to run `pod lib lint Bugsplat.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             			 = 'Bugsplat'
  s.version          			 = '1.0.1'
  s.summary          			 = 'Bugsplat crash reporting framework for iOS'
  s.homepage         			 = 'http://bugsplat.com'
  s.license          			 = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author           			 = { 'Geoff Raeder' => 'geoff@bugsplat.com' }
  s.source 		       			 = { :http => "https://github.com/BugSplat-Git/Bugsplat-iOS/releases/download/#{s.version}/Bugsplat.xcframework.zip" }
  s.platform							 = :ios
  s.ios.deployment_target  = '13.0'
  s.vendored_frameworks 	 = 'Bugsplat.xcframework'
end
