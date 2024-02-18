Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinSignalProviderSDK'
s.version = '1.0.0-beta1'
s.platform = :ios, '11.0'
s.summary = 'AppLovin Signal Provider SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license =
{
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2024 AppLovin Corp. All rights reserved.

The AppLovin SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source =
{
  :http => "https://applovin-mobile-artifacts.s3.amazonaws.com/ios/com/applovin/applovin-ios-signal-provider-sdk/beta/applovin-ios-signal-provider-sdk-1.0.0-beta1.zip",
  :type => "zip"
}
s.vendored_frameworks = "applovin-ios-signal-provider-sdk-#{s.version}/AppLovinSignalProviderSDK.xcframework"
s.resource = "applovin-ios-signal-provider-sdk-#{s.version}/AppLovinSignalProviderSDKResources.bundle"
s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'CoreMotion', 'CoreTelephony', 'MessageUI', 'SafariServices', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'
s.weak_frameworks = 'AppTrackingTransparency'
s.libraries = 'z'
s.swift_version = '5.0'

s.pod_target_xcconfig =
{
  'OTHER_LDFLAGS' => '-ObjC'
}

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end
