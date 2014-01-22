Pod::Spec.new do |s|
  s.name = "SalesforceSDKCore-Taptera"
  s.version = "1.0"
  s.summary = "Taptera version of Salesforce Network SDK for iOS."
  s.homepage = "https://github.com/Taptera/SalesforceSDKCore-Taptera"
  s.license      = {:type => 'custom', :file => 'LICENSE.md'}
  s.author = 'Salesforce'
  s.source = { :git => "https://github.com/Taptera/SalesforceSDKCore-Taptera.git", :tag => "v#{s.version}" }
  s.platform  = :ios, '6.0'

  s.requires_arc = true
  s.source_files = "SalesforceSDKCore/**/*.{h,m, c}"

  s.header_dir = 'SalesforceSDKCore'

  s.dependency 'Salesforce-Common-Utils-iOS-Taptera'
  s.dependency 'SalesforceOAuth-Taptera'
  s.dependency 'FMDB'

  s.private_header_files = "External/openssl/openssl/*.h"

  s.vendored_libraries = 'External/openssl/*.a', 'External/sqlcipher/libJavaScriptCore.a'
  s.prefix_header_file = 'SalesforceSDKCore/SalesforceSDKCore-Prefix.pch'

end
