Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AxonSDK'
s.version = '1.0.3-beta1'
s.platform = :ios, '12.0'
s.summary = 'Axon SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license =
{
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2025 AppLovin Corp. All rights reserved.

The AppLovin Axon SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source =
{
  # Check if the version string includes "beta". If so, point to the beta folder.
  :http => "#{s.version}" =~ /beta/ ?
    "https://artifacts.applovin.com/ios/com/applovin/axon-sdk/beta/axon-ios-sdk-#{s.version}.zip" :
    "https://artifacts.applovin.com/ios/com/applovin/axon-sdk/axon-ios-sdk-#{s.version}.zip",
  :type => "zip"
}
s.vendored_frameworks = "axon-ios-sdk-#{s.version}/AxonSDK.xcframework"
s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'CoreMotion', 'CoreTelephony', 'MessageUI', 'SafariServices', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'
s.weak_frameworks = 'AppTrackingTransparency'
s.libraries = 'z'
s.swift_version = '5.0'
s.pod_target_xcconfig =
{
  'OTHER_LDFLAGS' => '-ObjC'
}

end
