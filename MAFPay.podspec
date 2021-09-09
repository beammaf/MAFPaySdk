Pod::Spec.new do |s|
    s.name              = 'MAFPay'
    s.version           = '1.0.0'
    s.summary           = 'MAF pay Provided by Beam UAE'
    s.homepage          = 'http://beamuae.app/'
    s.dependency       'Alamofire', '=5.4.1'
    s.xcconfig         = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/MAFPay/**"' ,
                            'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

    s.author            = { 'beamuae' => 'developer@beamuae.app' }
    s.license           = { :type => 'MIT', :file => 'LICENSE.md' }

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/beammaf/MAFPaySdk.git',:tag => s.version}
    s.module_name       = 'MAFPay'
    s.swift_version = '5.0'
    s.requires_arc = true
    s.ios.vendored_frameworks = 'MAFPay.xcframework'

 
    s.ios.deployment_target = '11.0'
end
