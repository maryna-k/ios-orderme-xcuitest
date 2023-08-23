source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '13.0'

use_frameworks!

target "orderMe" do
   inhibit_all_warnings!
	pod 'Alamofire', '~> 5.7.1'
	pod 'ObjectMapper', '~> 4.2.0'
	pod 'AlamofireImage', '~> 4.2.0'
	pod 'FacebookCore', '~> 0.9.0'
	pod 'FacebookLogin', '~> 0.9.0'
	pod 'FacebookShare', '~> 0.9.0'
	pod 'SwiftLint', '~> 0.52.4'
	pod 'FBSDKCoreKit', '~> 5.15.1'
	pod 'FBSDKLoginKit', '~> 5.15.1'
	pod 'FBSDKShareKit', '~> 5.15.1'
	pod 'FBSDKPlacesKit', '~> 5.15.0'
  
  post_install do |installer|
      installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
          # Force CocoaPods targets to always build for x86_64
#          config.build_settings['ARCHS[sdk=iphonesimulator*]'] = '-x86_64'
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
          config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        end
      end
  end
end
