Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinMediationAmazonAdAdapter'
s.version = '2.2.15.1.0'
s.platform = :ios, '9.0'
s.summary = 'AmazonAd adapter used for mediation with the AppLovin MAX SDK'
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
  	:http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=AppLovinMediationAmazonAdAdapter-2.2.15.1.0.zip',
  	:type => 'zip',
	:sha256 => 'e62649cb1385af94ae70f023c69155168d35f847e47124825f03c8c8a6272dc4'
}

s.vendored_frameworks = 'AppLovinMediationAmazonAdAdapter-2.2.15.1.0/AppLovinMediationAmazonAdAdapter.framework'

s.dependency 'AppLovinSDK', '>= 6.0.0'

s.frameworks = 'AdSupport', 'CoreLocation', 'SystemConfiguration', 'CoreTelephony', 'MediaPlayer', 'EventKit', 'EventKitUI', 'StoreKit', 'QuartzCore', 'SafariServices', 'JavaScriptCore'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end