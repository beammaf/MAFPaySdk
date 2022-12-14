Pod::Spec.new do |s|
    s.name              = 'MAFPay'
    s.version           = '2.14.1'
    s.summary           = 'MAF pay Provided by Beam UAE'
    s.homepage          = 'http://beamuae.app/'
    s.dependency       'Alamofire', '=5.6.2'

    s.author            = { 'beamuae' => 'developer@beamuae.app' }
    s.license           = { :type => 'MIT', :file => 'LICENSE.md' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/beammaf/MAFPaySdk.git',:tag => s.version}

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'MAFPay.xcframework'
    s.vendored_frameworks = 'ExternalFrameworks/CardinalMobile.xcframework', 'ExternalFrameworks/LeanSDK.xcframework', 'ExternalFrameworks/BinancePaySDK.xcframework'
    s.requires_arc = true
    s.swift_version = '5.0'
end
