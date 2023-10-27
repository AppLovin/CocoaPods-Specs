Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinMediationMyTargetAdapter'
s.version = '5.19.0.1'
s.platform = :ios, '12.4'
s.summary = 'MyTarget adapter used for mediation with the AppLovin MAX SDK'
s.homepage = "https://github.com/CocoaPods/Specs/search?o=desc&q=#{s.name}&s=indexed"
s.license = 
{
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2022 AppLovin Corp. All rights reserved.

The AppLovin MAX SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = 
{
  	:http => "https://artifacts.applovin.com/ios/com/applovin/mediation/mytarget-adapter/beta/#{s.name}-#{s.version}.zip",
  	:type => 'zip'
}

s.vendored_frameworks = "#{s.name}-#{s.version}/#{s.name}.xcframework"

s.dependency 'myTargetSDK', '= 5.19.0'
s.dependency 'AppLovinSDK', '>= 12.0.0-beta23'

s.swift_version = '5.0'
s.swift_versions = '5.0'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end