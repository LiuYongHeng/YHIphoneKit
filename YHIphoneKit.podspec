Pod::Spec.new do |s|  
  
  s.name         = "YHIphoneKit"  
  s.version      = "0.0.2"  
  s.summary      = "Iphone develope tools"  
  s.homepage     = "https://github.com/LiuYongHeng/YHIphoneKit"  
  s.license      = "MIT"  
  s.author       = { "LiuYongheng" => "200829253@qq.com" }  
  s.platform     = :ios, "7.0"  
  s.source       = { :git => "https://github.com/LiuYongHeng/YHIphoneKit.git", :tag => s.version }  
  s.source_files  =  "YHIphoneSDK/YHIphoneSDK/**/*.{h,m}"  
  s.framework  = "UIKit"  
  s.requires_arc = true  
  
end  