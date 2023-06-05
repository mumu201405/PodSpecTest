Pod::Spec.new do |spec|
  spec.name         = 'FPXCoreKit'
  spec.version      = '0.0.1'
  spec.description      = <<-DESC
  FPXCoreKit SDK
                       DESC
  spec.summary      = 'FPXCoreKit'
  spec.license      = "MIT" 
  spec.author       = { "team.sdk" => "team.sdk@funplus.com" }
  spec.homepage     = "https://gitlab-ee.funplus.io/fp-sdks-ios-pod/fpx-ios-pod-spec/-/blob/main/README.md"
  spec.platform     = :ios, '10.0'
  spec.ios.deployment_target = '10.0'
  spec.source       = { :git => 'https://gitlab-ee.funplus.io/fp-sdks-ios-pod/fpx-ios-pod-libs.git', :tag => spec.version.to_s }

  spec.vendored_libraries = 'FPXCoreKit/*.a'
  spec.vendored_frameworks = 'FPXCoreKit/*.framework'

  spec.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
