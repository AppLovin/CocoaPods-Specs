Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinSDK'
s.version = '4.3.0'
s.platform = :ios, '6.0'
s.summary = 'AppLovin SDK for iOS'
s.homepage = 'https://www.applovin.com/'
s.license = 
{ 
	:type => 'Copyright', 
	:text => 'Copyright 2013 AppLovin Corp. All rights reserved.'  
}

s.source = 
{ 
	:http => 'https://bintray.com/applovin/iOS/download_file?file_path=applovin-ios-sdk-4.3.0.tar.bz2',
	:sha256 => 'a9214ba4f83c4501307007de4d77e19c2bc496d75af9444c27d8f43c97630b6d'
}
s.vendored_frameworks = 'AppLovinSDK.framework'
s.public_header_files = 'AppLovinSDK.framework/Headers/*.h'
s.module_map = 'AppLovinSDK.framework/Modules/*.modulemap'
s.preserve_paths = 'Migrating from Old Integration.pdf', 'appledoc/*'

s.frameworks = 'AdSupport', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'UIKit'
s.weak_framework = 'WebKit'

s.description = 'AppLovin turns mobile into the medium of choice for advertisers.\n\nOUR MISSION\n\nEnable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.\n\nOur marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.\n\nWe deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.\n'

end