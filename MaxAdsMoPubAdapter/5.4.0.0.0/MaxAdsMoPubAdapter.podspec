Pod::Spec.new do |s|

s.authors =
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'MaxAdsMoPubAdapter'
s.version = '5.4.0.0.0'
s.platform = :ios, '8.0'
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
  :http => 'https://bintray.com/applovin/iOS-Adapters/download_file?file_path=mopub-adapter-5.4.0.0.0.zip',
  :type => 'zip',
  :sha256 => ''
}

s.public_header_files = 'MaxAdsMoPubAdapter/5.4.0.0.0/MaxAdsMoPubAdapter.framework/Headers'
s.vendored_frameworks = 'MaxAdsMoPubAdapter/5.4.0.0.0/MaxAdsMoPubAdapter.framework'

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