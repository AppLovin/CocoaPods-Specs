Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinMediationFyberAdapter'
s.version = '7.1.1.0'
s.platform = :ios, '9.0'
s.summary = 'Fyber adapter used for mediation with the AppLovin MAX SDK'
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
  :http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=AppLovinMediationFyberAdapter-7.1.1.0.zip',
  :type => 'zip',
  :sha256 => '0ff528d6d4efb89a5a81036bf43f7cda7990bac04a1dc10ea54f5e12e905be25'
}

s.vendored_frameworks = 'AppLovinMediationFyberAdapter-7.1.1.0/AppLovinMediationFyberAdapter.framework'
s.module_map = 'AppLovinMediationFyberAdapter-7.1.1.0/AppLovinMediationFyberAdapter.framework/Modules/module.modulemap'
s.resource = 'AppLovinMediationFyberAdapter-7.1.1.0/IASDKResources.bundle'

s.dependency 'AppLovinSDK', '>= 6.0.0'

s.frameworks = 'SystemConfiguration', 'CoreGraphics', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'CoreTelephony', 'StoreKit', 'AdSupport', 'AVFoundation', 'CoreMedia', 'WebKit'
s.library = 'xml2.2'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end