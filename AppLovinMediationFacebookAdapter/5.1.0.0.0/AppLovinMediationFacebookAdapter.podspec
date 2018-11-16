Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinMediationFacebookAdapter'
s.version = '5.1.0.0.0'
s.platform = :ios, '9.0'
s.summary = 'Facebook adapter used for mediation with the AppLovin MAX SDK'
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
  :http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=AppLovinMediationFacebookAdapter-5.1.0.0.0.zip',
  :type => 'zip',
  :sha256 => '145a755f54d0334d05385a2b4ec0e4305028c689dd535d7ed9e82fa54ee2c529'
}

s.vendored_frameworks = 'AppLovinMediationFacebookAdapter-5.1.0.0.0/AppLovinMediationFacebookAdapter.framework'
s.module_map = 'AppLovinMediationFacebookAdapter-5.1.0.0.0/AppLovinMediationFacebookAdapter.framework/Modules/module.modulemap'

s.dependency 'AppLovinSDK', '>= 6.0.0'

s.frameworks = 'AudioToolbox', 'StoreKit', 'CoreGraphics', 'UIKit', 'Foundation', 'Security', 'CoreImage', 'AVFoundation', 'CoreMedia'
s.weak_frameworks = 'AdSupport', 'CoreMotion', 'SafariServices', 'VideoToolbox', 'WebKit'
s.library = 'xml2.2', 'c++'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end