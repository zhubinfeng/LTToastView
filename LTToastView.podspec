#
#  Be sure to run `pod spec lint LTToastView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LTToastView"
  s.version      = "0.0.1"
  s.summary      = "Like this you can get LTToastView."
  s.description  = "This is a LTToastView for Third Login easy to user"

  s.homepage     = "https://github.com/zhubinfeng/LTToastView"

  s.license      = "MIT"
  #

  s.author             = { "zhubinfeng" => "zhubin_feng@163.com" }

  s.platform     = :ios

  s.source       = { :git => "https://github.com/zhubinfeng/LTToastView.git", :tag => "#{s.version}" }



  s.source_files = 'LTToastView/*.{h,m}', "LTToastView/LTPulicClass/*.{h,m}"
  s.resource  = "LTToastView/IconResource.bundle"

  s.framework  = "Foundation", "UIKit"

end
