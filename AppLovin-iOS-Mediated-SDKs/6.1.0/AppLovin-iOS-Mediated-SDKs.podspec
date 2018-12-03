Pod::Spec.new do |s|

s.name = 'AppLovin-iOS-Mediated-SDKs'
s.version = '6.1.0'
s.summary = 'AppLovin supported SDKs for iOS mediation'
s.description = 'Hosted 3rd party SDKs that AppLovin supports for mediation'
s.homepage = 'https://www.applovin.com/'
s.license = { :file => 'LICENSE.txt', :type => 'AppLovin'  }
s.author = { 'Christopher Cong' => 'christopher.cong@applovin.com' }
s.platform = :ios, '9.0'
s.source = {
             :git => 'https://github.com/AppLovin/AppLovin-iOS-Mediated-SDKs.git',
             :branch => 'master'
}

s.subspec 'AdColony' do |adcolony|
	adcolony.dependency 'AdColony', '= 3.3.6'
end

s.subspec 'AmazonAd' do |amazonad|
    amazonad.dependency 'AmazonAd', '= 2.2.15.1'
end

s.subspec 'ChartboostSDK' do |chartboost|
	chartboost.dependency 'ChartboostSDK', '= 7.3.0'
end

s.subspec 'FBAudienceNetwork' do |facebook|
	facebook.dependency 'FBAudienceNetwork', '= 5.1.0'
end

s.subspec 'Google-Mobile-Ads-SDK' do |google|
	google.dependency 'Google-Mobile-Ads-SDK', '= 7.36.0'
end

s.subspec 'InMobiSDK' do |inmobi|
	inmobi.dependency 'InMobiSDK', '= 7.2.1'
end

s.subspec 'InneractiveSDK' do |inneractive|
	inneractive.dependency 'InneractiveSDK', '= 7.1.1'
end

s.subspec 'IronSourceSDK' do |ironsource|
	ironsource.dependency 'IronSourceSDK', '= 6.7.12.0'
end

s.subspec 'MintegralSDK' do |mintegral|
	mintegral.dependency 'MintegralSDK', '= 4.7.0'
end

s.subspec 'mopub-ios-sdk' do |mopub|
	mopub.dependency 'mopub-ios-sdk', '= 5.4.0'
end

s.subspec 'TapjoySDK' do |tapjoy|
	tapjoy.dependency 'TapjoySDK', '= 12.2.0'
end

s.subspec 'UnityAds' do |unity|
	unity.dependency 'UnityAds', '= 3.0.0'
end

s.subspec 'VungleSDK-iOS' do |vungle|
	vungle.dependency 'VungleSDK-iOS', '= 6.3.2'
end

end
