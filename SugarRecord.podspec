Pod::Spec.new do |s|
  s.name             = "SugarRecord"
  s.version          = "2.0.0"
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = "10.8"
  s.summary          = "CoreData wrapper written on Swift"
  s.homepage         = "https://github.com/gitdoapp/SugarRecord"
  s.license          = 'MIT'
  s.author           = { "Pedro" => "pedro@gitdo.io" }
  s.source           = { :git => "https://github.com/gitdoapp/SugarRecord.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pepibumue'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.dependency 'ReactiveCocoa', '4.0.4-alpha-1'
  s.dependency 'Result', '0.6.0-beta.6'
  s.source_files = ['SugarRecord/SugarRecord/Source/Foundation/**/*']

  s.subspec "CoreData" do |sp|
    sp.source_files = ['SugarRecord/SugarRecord/Source/CoreData/**/*']
    sp.frameworks = ['CoreData']
  end

  s.subspec "Realm" do |sp|
    sp.source_files = ['SugarRecord/SugarRecord/Source/Realm/**/*']
    sp.dependency 'Realm', '~> 0.96'
  end
end
