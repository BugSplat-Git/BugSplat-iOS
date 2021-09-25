#
# Be sure to run `pod lib lint Bugsplat.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Bugsplat'
  s.version          = '1.0.0'
  s.summary          = 'Bugsplat crash reporting framework for iOS'

  s.homepage         = 'https://github.com/BugSplat-Git/BugSplat-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Geoff Raeder' => 'geoff@bugsplat.com' }
  s.source           = { :git => 'https://github.com/BugSplat-Git/BugSplat-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.source_files = 'Bugsplat/*'
end
