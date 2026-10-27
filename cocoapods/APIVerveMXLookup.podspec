Pod::Spec.new do |s|
  s.name             = 'APIVerveMXLookup'
  s.version          = '1.2.3'
  s.summary          = 'MX Lookup queries DNS to find MX records for any domain.'
  s.description      = <<-'DESC'
MX Lookup queries DNS to find MX records for any domain. It returns an array of mail exchange hostnames and their priority routing values in real time.

This iOS/macOS SDK provides a convenient way to access the MX Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/mxlookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/mxlookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveMXLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
