require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "QRScanReader"
  s.version      = package["version"]
  s.summary      = "Social Share, Sending Simple Data to Other Apps"
  s.homepage     = "https://www.npmjs.com/package/react-native-qr-scanner"
  s.license      = "MIT"
  s.author       = { "" => "" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "git+https://git@github.com/trustee-wallet/react-native-qr-scanner", :tag => "#{s.version}" }

  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
end
