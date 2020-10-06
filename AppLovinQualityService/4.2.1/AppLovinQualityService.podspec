Pod::Spec.new do |s|

s.authors =
{
    'AppLovin Corporation' => 'support@applovin.com'
}
s.name = 'AppLovinQualityService'
s.version = '4.2.1'
s.platform = :ios, '9.0'
s.summary = 'Internal AppLovin Quality Service SDK pod for team members without access to source code'
s.homepage = 'https://dash.applovin.com/documentation/mediation/ios/getting-started/integration#enable-ad-review'
s.license =
{
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2020 AppLovin Corp. All rights reserved.

The AppLovin Quality Service SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source =
{
  # NOTE: SDK directory has to be restructured to remove symlinks and non-related artifacts in order to work with CocoaPods
  :http => 'https://bintray.com/applovin/PythonLib/download_file?file_path=AppLovinQualityServicePod-4.2.1.zip',
  :type => 'zip'
}

s.vendored_frameworks = 'AppLovinQualityServicePod-4.2.1/AppLovinQualityService.framework'
s.module_map = 'AppLovinQualityServicePod-4.2.1/AppLovinQualityService.framework/Modules/module.modulemap'

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end
