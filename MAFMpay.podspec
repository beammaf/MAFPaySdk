Pod::Spec.new do |s|
    s.name              = 'MAFPaySdk'
    s.version           = '0.0.1'
    s.summary           = 'MAF pay Provided by Beam UAE'
    s.homepage          = 'http://beamuae.app/'
    s.dependency 'Moya', '~> 13.0.1'

    s.author            = { 'Name' => 'developer@beamuae.app' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/beammaf/ios-physical-store-sdk.git',:branch => 'master'}

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'MAFMpay.framework'
    s.requires_arc = true
end
