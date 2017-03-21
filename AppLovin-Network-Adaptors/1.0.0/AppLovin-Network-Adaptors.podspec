Pod::Spec.new do |s|

s.name = 'AppLovin-SDK-Network-Adaptors'
s.version = '1.0.0'
s.summary = 'AppLovin SDK Adaptors for other ad networks'
s.description = ''
s.homepage = 'http://applovin.com/integration'
s.license = { :file => 'LICENSE.txt', :type => 'AppLovin'  }
s.author = { 'Christopher Cong' => 'christopher.cong@applovin.com' }
s.platform = :ios, '7.0'
s.source = {
             :git => 'https://github.com/AppLovin/SDK-Network-Adaptors.git'
}

s.subspec 'MoPub' do |mp|
	  mp.source_files = 'MoPub/*'
end

s.subspec 'AdMob' do |am|
	  am.source_files = 'AdMob/*'
end

end