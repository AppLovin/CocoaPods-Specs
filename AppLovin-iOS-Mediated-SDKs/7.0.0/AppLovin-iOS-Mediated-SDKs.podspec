Pod::Spec.new do |s|

s.name = 'AppLovin-iOS-Mediated-SDKs'
s.version = '7.0.0'
s.summary = 'AppLovin supported SDKs for iOS mediation'
s.description = 'Hosted 3rd party SDKs that AppLovin supports for mediation'
s.homepage = 'https://www.applovin.com/'
s.license = { :file => 'LICENSE.txt', :type => 'AppLovin'  }
s.author = { 'Christopher Cong' => 'christopher.cong@applovin.com' }
s.platform = :ios, '7.0'
s.source = { 
	     :git => '/Users/chriscong/dev/AppLovin/SDK-iOS/AppLovin-iOS-Mediated-SDKs/.git', 
	     :tag => '7.0.0' 
}

s.subspec 'Chartboost' do |chartboost|
	#chartboost.resources = 'Chartboost/*'
	chartboost.dependency 'ChartboostSDK', '~> 6.6.1'
end

s.subspec 'FBAudienceNetwork' do |facebook|
	facebook.resources = 'FBAudienceNetwork/*'
end

s.subspec 'GoogleMobileAds' do |google|
	google.resources = 'GoogleMobileAds/*'
end

s.subspec 'Heyzap' do |heyzap|
	heyzap.resources = 'Heyzap/*'
end

s.subspec 'InMobi' do |inmobi|
	inmobi.resources = 'InMobi/*'
end

s.subspec 'IronSource' do |ironsource|
	ironsource.resources = 'IronSource/*'
end

s.subspec 'MoPub' do |mopub|
	mopub.resources = 'MoPub/*'
end

s.subspec 'UnityAds' do |unity|
	unity.dependency 'UnityAds', '~> 2.0.8'
end

s.subspec 'Vungle' do |vungle|
	vungle.dependency 'VungleSDK-iOS', '~> 4.0.9'
end

end