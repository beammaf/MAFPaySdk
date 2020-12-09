Pod::Spec.new do |s|
    s.name              = 'MAFPay'
    s.version           = '1.0.0'
    s.summary           = 'MAF pay Provided by Beam UAE'
    s.homepage          = 'http://beamuae.app/'
    s.dependency       'Alamofire', '=4.9.1'

    s.author            = { 'beamuae' => 'developer@beamuae.app' }
    s.license           = { :type => 'MIT', :file => 'LICENSE.md' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/beammaf/MAFPaySdk.git',:tag => s.version}

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'MAFPay.framework'
    s.requires_arc = true
    s.swift_version = '5.4.0'
    s.swift_versions = ['5.1', '5.2', '5.3']
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)', 'CLANG_ENABLE_MODULES' => 'YES', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES' }

end
