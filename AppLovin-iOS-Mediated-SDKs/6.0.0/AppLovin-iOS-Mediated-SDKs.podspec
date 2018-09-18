Pod::Spec.new do |s|

s.name = 'AppLovin-iOS-Mediated-SDKs'
s.version = '6.0.0'
s.summary = 'AppLovin supported SDKs for iOS mediation'
s.description = 'Hosted 3rd party SDKs that AppLovin supports for mediation'
s.homepage = 'https://www.applovin.com/'
s.license = { :file => 'LICENSE.txt', :type => 'AppLovin'  }
s.author = { 'Christopher Cong' => 'christopher.cong@applovin.com' }
s.platform = :ios, '8.0'
s.source = {
             :git => 'https://github.com/AppLovin/AppLovin-iOS-Mediated-SDKs.git',
             :tag => '6.0.0'
}

s.subspec 'AdColony' do |adcolony|
	adcolony.dependency 'AdColony', '~> 3.3.5'
end

s.subspec 'ChartboostSDK' do |chartboost|
	chartboost.dependency 'ChartboostSDK', '~> 7.2.0'
end

s.subspec 'FBAudienceNetwork' do |facebook|
	facebook.dependency 'FBAudienceNetwork', '~> 4.99.3'
end

s.subspec 'Google-Mobile-Ads-SDK' do |google|
	google.dependency 'Google-Mobile-Ads-SDK', '~> 7.32.0'
	google.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-weak_framework "Google-Mobile-Ads-SDK"' }
end

s.subspec 'Heyzap' do |heyzap|
	heyzap.dependency 'Heyzap', '~> 9.22.0'
end

s.subspec 'InMobiSDK' do |inmobi|
	inmobi.dependency 'InMobiSDK', '~> 7.1.2'
end

s.subspec 'IronSourceSDK' do |ironsource|
	ironsource.dependency 'IronSourceSDK', '~> 6.7.11.0'
end

s.subspec 'mopub-ios-sdk' do |mopub|
	mopub.dependency 'mopub-ios-sdk/Core', '~> 5.3.0'
end

s.subspec 'UnityAds' do |unity|
	unity.dependency 'UnityAds', '~> 2.3.0'
end

s.subspec 'VungleSDK-iOS' do |vungle|
	vungle.dependency 'VungleSDK-iOS', '~> 6.3.0'
end

end
