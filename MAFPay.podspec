Pod::Spec.new do |s|
    s.name              = 'MAFPay'
    s.version           = '0.0.31'
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
    s.swift_version = '5.0'

end
