Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'devsupport@applovin.com'
}
s.name = 'AppLovinUserEngagementSDK'
s.version = '1.0.0-beta2'
s.platform = :ios, '9.0'
s.summary = 'AppLovin User Engagement SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2021 AppLovin Corp. All rights reserved.

The AppLovin SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = 
{
  :http => 'https://artifacts.applovin.com/ios/com/applovin/applovin-user-engagement-sdk/beta/applovin-ios-user-engagement-sdk-1.0.0-beta2.zip',
  :type => 'zip'
}

s.vendored_frameworks = 'applovin-ios-user-engagement-sdk-1.0.0-beta2/AppLovinUserEngagementSDK.xcframework'
s.preserve_paths = 'applovin-ios-user-engagement-1.0.0-beta2/appledoc/*'
s.resource = 'applovin-ios-user-engagement-1.0.0-beta2/AppLovinUserEngagementSDKResources.bundle'
s.frameworks = 'Security'
s.dependency 'AppLovinSDK'

# pod_target_xcconfig will not cause conflicts with the xcconfig specified in the Podfile (unlike user_target_xcconfig)
s.pod_target_xcconfig =
{
  'OTHER_LDFLAGS' => '-ObjC',
  # AppLovinSDK no longer includes the `i386` slice for 32-bit simulators, so we set the `VALID_ARCHS` to fix `pod spec lint` for this and our MAX adapters.
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
}

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end
