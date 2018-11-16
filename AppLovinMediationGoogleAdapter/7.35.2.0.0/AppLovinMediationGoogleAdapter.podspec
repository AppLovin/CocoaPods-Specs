Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinMediationGoogleAdapter'
s.version = '7.35.2.0.0'
s.platform = :ios, '9.0'
s.summary = 'Google adapter used for mediation with the AppLovin MAX SDK'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2018 AppLovin Corp. All rights reserved.

The AppLovin MAX SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = 
{ 
  :http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=AppLovinMediationGoogleAdapter-7.35.2.0.0.zip',
  :type => 'zip',
  :sha256 => 'ff3e00c452a4b1ce719eda06a755e4a11f5f44626317275c80c477dad0278632'
}

s.vendored_frameworks = 'AppLovinMediationGoogleAdapter-7.35.2.0.0/AppLovinMediationGoogleAdapter.framework'
s.module_map = 'AppLovinMediationGoogleAdapter-7.35.2.0.0/AppLovinMediationGoogleAdapter.framework/Modules/module.modulemap'

s.dependency 'Google-Mobile-Ads-SDK', '~> 7.35.2'
s.dependency 'AppLovinSDK', '>= 6.0.0'

s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'CoreMotion', 'CoreTelephony', 'CoreVideo', 'GLKit', 'MediaPlayer', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'StoreKit', 'SystemConfiguration'
s.weak_frameworks = 'AdSupport', 'JavaScriptCore', 'SafariServices', 'WebKit'
s.library = 'z', 'sqlite3'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end