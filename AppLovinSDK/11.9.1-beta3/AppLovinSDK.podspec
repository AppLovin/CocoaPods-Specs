Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinSDK'
s.version = '11.9.1-beta3'
s.platform = :ios, '9.0'
s.summary = 'AppLovin SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2023 AppLovin Corp. All rights reserved.

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
s.resource = "applovin-ios-sdk-#{s.version}/AppLovinSDKResources.bundle"
s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'CoreMotion', 'CoreTelephony', 'MessageUI', 'SafariServices', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'
s.weak_frameworks = 'AppTrackingTransparency' # weakly link against AppTrackingTransparency to allow building iOS13 tests
s.libraries = 'z'

# pod_target_xcconfig will not cause conflicts with the xcconfig specified in the Podfile (unlike user_target_xcconfig)
s.pod_target_xcconfig =
{
  'OTHER_LDFLAGS' => '-ObjC',
  # AppLovinSDK no longer includes the `i386` slice for simulators on 32-bit x86 Macs, so we set the `VALID_ARCHS` to fix `pod spec lint` for this and our MAX adapters.
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',
  # VALID_ARCHS is deprecated, so we include EXCLUDED_ARCHS as well.
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end
