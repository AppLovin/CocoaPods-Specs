Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinSDK'
s.version = '4.8.2'
s.platform = :ios, '6.0'
s.summary = 'AppLovin SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
	:type => 'Copyright', 
	:text => 'Copyright 2017 AppLovin Corp. All rights reserved.'  
}

s.source = 
{ 
	:http => 'https://bintray.com/applovin/iOS/download_file?file_path=applovin-ios-sdk-4.8.2.zip',
	:type => 'zip',
	:sha256 => '17e2a028282717f7041f64c9038c7579833fe6534ebe2d63c9aea75a2c9d4f8f'
}
s.vendored_frameworks = 'applovin-ios-sdk-4.8.2/AppLovinSDK.framework'
s.module_map = 'applovin-ios-sdk-4.8.2/AppLovinSDK.framework/Modules/module.modulemap'
s.preserve_paths = 'applovin-ios-sdk-4.8.2/Migrating from Old Integration.pdf', 'applovin-ios-sdk-4.8.2/appledoc/*'

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

end