Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinSDK'
s.version = '4.6.0'
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
	:http => 'https://bintray.com/applovin/iOS/download_file?file_path=applovin-ios-sdk-4.6.0.zip',
	:type => 'zip',
	:sha256 => '9f76bf84e7cdd70b9ca533375c113a27a215238c811ca4bd20e01531cc37d2fc'
}
s.vendored_frameworks = 'applovin-ios-sdk-4.6.0/AppLovinSDK.framework'
s.module_map = 'applovin-ios-sdk-4.6.0/AppLovinSDK.framework/Modules/module.modulemap'
s.preserve_paths = 'applovin-ios-sdk-4.6.0/Migrating from Old Integration.pdf', 'applovin-ios-sdk-4.6.0/appledoc/*'

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