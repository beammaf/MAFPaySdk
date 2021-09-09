Pod::Spec.new do |s|
    s.name              = 'MAFPay'
    s.version           = '1.0.0'
    s.summary           = 'MAF pay Provided by Beam UAE'
    s.homepage          = 'http://beamuae.app/'
    s.dependency       'Alamofire', '=5.4.1'
    s.author            = { 'beamuae' => 'developer@beamuae.app' }
    s.license           = { :type => 'MIT', :file => 'LICENSE.md' }
    s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MAFPay/**"'}

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/beammaf/MAFPaySdk.git',:tag => s.version}
    s.module_name       = 'MAFPay'
    s.swift_version = '5.0'
    s.requires_arc = true
    s.default_subspec     = 'Core'

     s.subspec 'Core' do |core|
        core.preserve_paths      = 'MAFPay.xcframework'
        core.vendored_frameworks = 'MAFPay.xcframework'
    end
 
    s.ios.deployment_target = '11.0'
end
