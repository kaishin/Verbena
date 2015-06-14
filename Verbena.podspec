Pod::Spec.new do |s|
  s.name = "Verbena"
  s.version = "1.0.1"
  s.summary = "Get image instances from Quartz drawing code."
  s.homepage = "https://github.com/kaishin/Verbena"
  s.social_media_url = "http://twitter.com/kaishin"
  s.license = { :type => "BSD", :file => "LICENSE" }
  s.author = { "Reda Lemeden" => "reda@thoughtbot.com" }
  s.source = { :git => "https://github.com/kaishin/Verbena.git", :tag => "v#{s.version}" }
  s.platform = :ios, "8.0"
  s.ios.source_files = "Verbena/**/*.{h,swift}"
  s.osx.source_files = "VerbenaMac/**/*.{h,swift}"
  s.requires_arc = true
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
end
