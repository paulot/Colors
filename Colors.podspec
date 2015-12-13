Pod::Spec.new do |s|
  s.name         = "Colors"
  s.version      = "0.1"
  s.summary      = "Terminal Colors for Swift"
  s.description  = "Terminal String Coloring in Swift"

  s.homepage     = "https://github.com/paulot/Colors"
  s.screenshots  = "https://raw.githubusercontent.com/paulot/Colors/master/media/ANSIColors.png"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Paulo Tanaka" => "paulo.tanaka3@gmail.com" }

  s.source       = { :git => "https://github.com/paulot/Colors.git", :tag => s.version }

  s.source_files  = "Colors", "Colors/**/*.{h,m,swift}"
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
end
