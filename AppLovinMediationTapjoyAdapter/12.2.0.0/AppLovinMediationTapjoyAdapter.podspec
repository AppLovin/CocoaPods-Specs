Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinMediationTapjoyAdapter'
s.version = '12.2.0.0'
s.platform = :ios, '9.0'
s.summary = 'Tapjoy adapter used for mediation with the AppLovin MAX SDK'
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
  	:http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=AppLovinMediationTapjoyAdapter-12.2.0.0.zip',
  	:type => 'zip',
	:sha256 => '5300f8ca1fb32fbb0448d811ee83cce065736b8a281d7a61158d5044fad4e978'
}

s.vendored_frameworks = 'AppLovinMediationTapjoyAdapter-12.2.0.0/AppLovinMediationTapjoyAdapter.framework'

s.dependency 'TapjoySDK', '= 12.2.0'
s.dependency 'AppLovinSDK', '>= 6.0.0'

s.frameworks = 'Security', 'CoreData', 'CFNetwork', 'CoreGraphics', 'CoreLocation', 'CoreMotion', 'EventKitUI', 'EventKit', 'Foundation', 'MapKit', 'MediaPlayer', 'MessageUI', 'MobileCoreServices', 'QuartzCore', 'SystemConfiguration', 'UIKit'
s.weak_frameworks = 'AdSupport', 'CoreTelephony', 'Social', 'StoreKit', 'Twitter'
s.library = 'sqlite3.0', 'xml2', 'z', 'c++'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end