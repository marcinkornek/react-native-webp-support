require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-webp-support"
  s.version      = package["version"]
  s.summary      = "Support Webp"
  s.author       = "Scerelli fork by @TGPSKI"

  s.homepage     = "https://github.com/TGPSKI/react-native-webp-support"

  s.license      = "MIT"
  s.ios.deployment_target = "7.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/TGPSKI/react-native-webp-support.git", :tag => "#{s.version}" }

  s.source_files  = "DBAWebpImageDecoder.{h,m}"
  s.vendored_frameworks = 'WebP.framework', 'WebPDemux.framework'
  s.requires_arc = true

  s.dependency "React"
end
