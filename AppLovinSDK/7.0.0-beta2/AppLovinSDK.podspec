Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'devsupport@applovin.com'
}
s.name = 'AppLovinSDK'
s.version = '7.0.0-beta2'
s.platform = :ios, '9.0'
s.summary = 'AppLovin SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2020 AppLovin Corp. All rights reserved.

The AppLovin SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = 
{ 
  :http => 'https://bintray.com/applovin/PythonLib/download_file?file_path=applovin-ios-sdk-7.0.0-beta2.zip',
  :type => 'zip'
}
s.vendored_frameworks = 'applovin-ios-sdk-7.0.0-beta2/AppLovinSDK.framework'
s.module_map = 'applovin-ios-sdk-7.0.0-beta2/AppLovinSDK.framework/Modules/module.modulemap'
s.preserve_paths = 'applovin-ios-sdk-7.0.0-beta2/appledoc/*'
s.resource = 'applovin-ios-sdk-7.0.0-beta2/AppLovinSDKResources.bundle'

s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'MessageUI', 'SafariServices', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'
s.libraries = 'z'

s.xcconfig =
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
