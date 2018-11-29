Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinMediationMoPubAdapter'
s.version = '5.4.0.0.0'
s.platform = :ios, '9.0'
s.summary = 'MoPub adapter used for mediation with the AppLovin MAX SDK'
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
  :http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=AppLovinMediationMoPubAdapter-5.4.0.0.zip',
  :type => 'zip',
  :sha256 => 'f27327f129e63cbb41e75b10b4cef42f67c4f64fa4e689cec601cc3706d65490'
}

s.vendored_frameworks = 'AppLovinMediationMoPubAdapter-5.4.0.0/AppLovinMediationMoPubAdapter.framework'

s.dependency 'mopub-ios-sdk', '= 5.4.0'
s.dependency 'AppLovinSDK', '>= 6.0.0'

s.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreLocation', 'CoreMedia', 'CoreTelephony', 'Foundation', 'MediaPlayer', 'QuartzCore', 'SystemConfiguration', 'UIKit', 'SafariServices'
s.weak_frameworks = 'AdSupport', 'StoreKit', 'WebKit'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end