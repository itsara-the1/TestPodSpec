Pod::Spec.new do |spec|
  spec.name         = "TestPodSpec"
  spec.version      = "1.0.0"
  spec.summary      = "T1PSDK"
  spec.description  = "T1PSDK"
  spec.homepage     = "https://github.com/The1Central/t1p-sdk-ios"
  spec.license      = "All Right Reserved"
  spec.author       = "THE 1 CENTRAL COMPANY LIMITED"
  spec.platform     = :ios, "11.0"
  spec.ios.deployment_target = "11.0"
  spec.swift_version = '5'
  spec.source       = { :s3 => "https://the1-t1p-sdk.s3.amazonaws.com/files/#{spec.name}_#{spec.version}.zip"  }
  spec.default_subspec = 'Core'
  spec.resource_bundle = { "T1PSDK" => ["T1PSDK/*.lproj/*.strings", "T1PSDK/Resources/**", "T1PSDK/**/**/*.{xib}", "T1PSDK/Assets.xcassets"] }
  spec.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER': 'tech.central.t1p-sdk' }
  spec.subspec 'Core' do |ss|
      ss.source_files = "T1PSDK", "T1PSDK/UI/**/**/*.{h,m,swift}", "T1PSDK/Helper/**/*.{swift}", "T1PSDK/Model/**/*.{swift}", "T1PSDK/Service/**/*.{swift}", "T1PSDK/View model/**/*.{swift}"
      ss.dependency "Alamofire", '~> 5'
      ss.dependency 'Moya'
      ss.dependency 'Moya-ObjectMapper'
      ss.dependency 'Moya/RxSwift'
      ss.dependency 'Moya-ObjectMapper/RxSwift'
      ss.dependency "ObjectMapper"
      ss.dependency "RxRelay"
      ss.dependency "RxCocoa", "~> 5"
      ss.dependency 'RxKeyboard'
      ss.dependency "CryptoSwift"
      ss.dependency 'DropDown', '2.3.13'
      ss.dependency 'KVNProgress'
      ss.dependency 'SwiftKeychainWrapper'
      ss.dependency 'JTAppleCalendar', '8.0.3'
  end
end
