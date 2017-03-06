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
#s.resources = 'README.md`
#s.dependency 'GoogleMobileAds'


s.subspec 'MoPub' do |mopub|
mopub.resources = 'MoPub/*'
end

#s.subspec 'GoogleMobileAds' do |google|
#google.resources = 'GoogleMobileAds/*'
#end

#s.subspec 'FBAudienceNetwork' do |fb|
     
    #s.dependency 'FBAudienceNetwork', '~> 4.20.0'
    #s.vendored_frameworks = 'FBAudienceNetwork/FBAudienceNetwork.framework'
#end

end