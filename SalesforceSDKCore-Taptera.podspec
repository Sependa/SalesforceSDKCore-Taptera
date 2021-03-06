Pod::Spec.new do |s|
  s.name = "SalesforceSDKCore-Taptera"
  s.version = "2.3.2"
  s.summary = "Sependa version of Salesforce SDK Core for iOS."
  s.homepage = "https://github.com/Sependa/SalesforceSDKCore-Taptera"
  s.license      = {:type => 'custom', :file => 'LICENSE.md'}
  s.author = 'Salesforce'
  s.source = { :git => "https://github.com/Sependa/SalesforceSDKCore-Taptera.git", :tag => "v#{s.version}" }
  s.platform  = :ios, '6.0'

  s.requires_arc = true
  s.source_files = "SalesforceSDKCore/Classes/**/*.{h,m, c}"

  s.header_dir = 'SalesforceSDKCore'

  s.dependency 'Salesforce-Common-Utils-iOS-Taptera', '2.3.1'
  s.dependency 'SalesforceOAuth-Taptera', '2.3.1'
  s.dependency 'FMDB'

  s.vendored_libraries = 'External/openssl/*.a', 'External/sqlcipher/libJavaScriptCore.a'
  s.prefix_header_file = 'SalesforceSDKCore/SalesforceSDKCore-Prefix.pch'

end
