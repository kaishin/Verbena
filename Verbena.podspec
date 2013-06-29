Pod::Spec.new do |s|
  s.name         = "Verbena"
  s.version      = "0.0.2"
  s.summary      = "A collection of Core Graphics helper methods"
  s.homepage     = "https://github.com/kaishin/Verbena"
  s.screenshots  = "http://monosnap.com/image/UQUwZRjllBsl30ngep6X1MAZj.png"
  s.license      = 'BSD'
  s.author       = { "Reda Lemeden" => "reda@thoughtbot.com" }
  s.source       = { :git => "https://github.com/kaishin/Verbena.git", :tag => "0.0.2" }
  s.platform     = :ios, '6.1'
  s.source_files = 'Verbena/Verbena/'
  s.requires_arc = true
end
