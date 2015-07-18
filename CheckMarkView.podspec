Pod::Spec.new do |s|
s.name         = "CheckMarkView"
s.version      = "0.1"
s.summary      = "CheckMarkView"
s.description  = "CheckMarkView"
s.homepage     = "https://github.com/maximbilan/CheckMarkView"
s.license      = { :type => "MIT" }
s.author       = { "Maxim Bilan" => "maximb.mail@gmail.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/maximbilan/CheckMarkView.git", :tag => "0.1" }
s.source_files = "Classes", "CheckMarkView/Sources/**/*.{swift}"
s.requires_arc = true
end