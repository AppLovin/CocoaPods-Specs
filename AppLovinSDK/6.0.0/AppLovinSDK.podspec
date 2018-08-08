Pod::Spec.new do |s|

s.authors = 
{
	'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinSDK'
s.version = '6.0.0'
s.platform = :ios, '6.0'
s.summary = 'AppLovin SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
	:type => 'Commercial License',
	:text => <<-LICENSE

Copyright 2018 AppLovin Corp. All rights reserved.

The AppLovin SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = 
{ 
	:http => 'https://bintray.com/applovin/iOS/download_file?file_path=applovin-ios-sdk-5.1.0.zip',
	:type => 'zip',
	:sha256 => '1156d4cac2841a9596fd3877c989404c3885d70b6337a146965098a6f2adf658'
}
s.vendored_frameworks = 'applovin-ios-sdk-5.1.0/AppLovinSDK.framework'
s.module_map = 'applovin-ios-sdk-5.1.0/AppLovinSDK.framework/Modules/module.modulemap'
s.preserve_paths = 'applovin-ios-sdk-5.1.0/Migrating from Old Integration.pdf', 'applovin-ios-sdk-5.1.0/appledoc/*'

s.frameworks = 'AdSupport', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'

s.xcconfig = {
	      'OTHER_LDFLAGS' => '-ObjC'
}

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

s.subspec 'AdColony' do |adcolony|
	adcolony.dependency 'AdColony', '~> 3.3.5'
end

s.subspec 'ChartboostSDK' do |chartboost|
	chartboost.dependency 'ChartboostSDK', '~> 7.2.0'
end

s.subspec 'FBAudienceNetwork' do |facebook|
	facebook.dependency 'FBAudienceNetwork', '~> 4.99.2'
end

s.subspec 'Google-Mobile-Ads-SDK' do |google|
	google.dependency 'Google-Mobile-Ads-SDK', '~> 7.8.0'
end

s.subspec 'Heyzap' do |heyzap|
	heyzap.dependency 'Heyzap', '~> 9.22.0'
end

s.subspec 'InMobiSDK' do |inmobi|
	inmobi.dependency 'InMobiSDK', '~> 7.1.1'
end

s.subspec 'IronSourceSDK' do |ironsource|
	ironsource.dependency 'IronSourceSDK', '~> 6.7.10.0'
end

s.subspec 'mopub-ios-sdk' do |mopub|
	mopub.dependency 'mopub-ios-sdk/Core', '~> 5.2.0'
end

s.subspec 'UnityAds' do |unity|
	unity.dependency 'UnityAds', '~> 2.3.0'
end

s.subspec 'Vungle-iOS' do |vungle|
	vungle.dependency 'VungleSDK-iOS', '~> 6.2.0'
end

end
