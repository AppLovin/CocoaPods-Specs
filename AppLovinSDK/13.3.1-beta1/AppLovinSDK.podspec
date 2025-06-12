Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinSDK'
s.version = '13.3.1-beta1'
s.platform = :ios, '12.0'
s.summary = 'AppLovin SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2025 AppLovin Corp. All rights reserved.

The AppLovin SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = 
{
  # Check if the version string includes "beta". If so, point to the beta folder.
  :http => "#{s.version}" =~ /beta/ ?
    "https://artifacts.applovin.com/ios/com/applovin/applovin-sdk/beta/applovin-ios-sdk-#{s.version}.zip" :
    "https://artifacts.applovin.com/ios/com/applovin/applovin-sdk/applovin-ios-sdk-#{s.version}.zip",
  :type => "zip"
}
s.vendored_frameworks = "applovin-ios-sdk-#{s.version}/AppLovinSDK.xcframework"
s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreHaptics', 'CoreMedia', 'CoreMotion', 'CoreTelephony', 'MessageUI', 'SafariServices', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'
s.weak_frameworks = 'AppTrackingTransparency'
s.libraries = 'z'
s.swift_version = '5.0'

# pod_target_xcconfig will not cause conflicts with the xcconfig specified in the Podfile (unlike user_target_xcconfig)
s.pod_target_xcconfig =
{
  'OTHER_LDFLAGS' => '-ObjC'
}

s.description = <<-DESC

AppLovin makes technologies that help businesses of every size connect to their ideal customers. The company provides end-to-end software and AI solutions for businesses to reach, monetize, and grow their global audiences. For more information about AppLovin, visit: www.applovin.com.

DESC

end
