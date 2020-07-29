#
#  Be sure to run `pod spec lint DBY1VNSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "DBYSDK_dylib"
  s.version      = "2.1.1"
  s.summary      = "DBYSDK_dylib"
  s.description  = "多贝云Saas平台基础sdk"

  s.homepage     = "http://docs.duobeiyun.com"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (C) 2020 duobeiyun DBYSDK_dylib, Inc. All rights reserved.
      LICENSE
  }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.author       = { "zhongfan" => "fan.zhong@duobei.com" }
  s.source       = { :git => "https://github.com/duobeiyun/DBYSDK_dylib_ios.git", :tag => "#{s.version}" }
  s.vendored_frameworks  = "DBYSDK_dylib.framework"

end
