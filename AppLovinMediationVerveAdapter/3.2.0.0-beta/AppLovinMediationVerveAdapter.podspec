Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinMediationVerveAdapter'
s.version = '3.2.0.0'
s.platform = :ios, '12.0'
s.summary = 'Verve adapter used for mediation with the AppLovin MAX SDK'
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
  :http => "https://artifacts.applovin.com/ios/com/applovin/mediation/verve-adapter/beta/#{s.name}-#{s.version}.zip",
  :type => 'zip'
}

s.vendored_frameworks = "#{s.name}-#{s.version}/#{s.name}.xcframework"

s.dependency 'HyBid', '= 3.2.0'
s.dependency 'AppLovinSDK', '>= 13.0.0'
s.swift_version = '5.0'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end
