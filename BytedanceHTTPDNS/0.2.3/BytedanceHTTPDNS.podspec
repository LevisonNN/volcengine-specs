Pod::Spec.new do |s|
  s.name = "BytedanceHTTPDNS"
  s.version = "0.2.3"
  s.summary = "BytedanceHTTPDNS is a toB sdk of httpdns"
  s.authors = {"liuzhe.1939"=>"liuzhe.1939@bytedance.com"}
  s.homepage         = 'https://github.com/volcengine/volcengine-specs'
  s.description = "BytedanceHTTPDNS is a toB sdk of httpdns."
  s.source = { :http => "https://sf3-ttcdn-tos.pstatp.com/obj/volcengine/BytedanceHTTPDNS-ios/#{s.version}/BytedanceHTTPDNS.zip" }

  s.license          = {
    :type => 'Copyright',
    :text => <<-LICENSE
              Bytedance copyright
    LICENSE
  }

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.ios.deployment_target    = '9.0'
  s.preserve_paths = '*'
  s.vendored_library = 'BytedanceHTTPDNS/libBytedanceHTTPDNS.a'
  s.source_files = 'BytedanceHTTPDNS/*'
  s.public_header_files = 'BytedanceHTTPDNS/TTDnsResolver.h', 'BytedanceHTTPDNS/TTDnsExportResult.h'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
end
