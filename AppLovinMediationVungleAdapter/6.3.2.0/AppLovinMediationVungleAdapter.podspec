Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinMediationVungleAdapter'
s.version = '6.3.2.0'
s.platform = :ios, '9.0'
s.summary = 'Vungle adapter used for mediation with the AppLovin MAX SDK'
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
  :http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=AppLovinMediationVungleAdapter-6.3.2.0.zip',
  :type => 'zip',
  :sha256 => '42b679a8d0fdbb95bb039b8d253364e28cd8978c8873219f7978a56403b1df2f'
}

s.vendored_frameworks = 'AppLovinMediationVungleAdapter-6.3.2.0/AppLovinMediationVungleAdapter.framework'

s.dependency 'VungleSDK-iOS', '= 6.3.2.0'
s.dependency 'AppLovinSDK', '>= 6.1.0'

s.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'MediaPlayer', 'QuartzCore', 'StoreKit', 'SystemConfiguration'
s.weak_frameworks = 'Foundation', 'UIKit', 'WebKit'
s.library = 'z'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end