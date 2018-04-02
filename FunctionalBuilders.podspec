Pod::Spec.new do |s|

  s.name         = "FunctionalBuilders"
  s.version      = "0.8"
  s.summary      = "With FunctionalBuilders you can build views from code in a functional way!"

  s.homepage     = "https://github.com/szymonmrozek/FunctionalBuilders"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }

  s.authors = { 'Szymon Mrozek' => 'szymon.mrozek.sm@gmail.com' }

  s.platform     = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = "4.1"

  s.source       = { :git => "https://github.com/szymonmrozek/FunctionalBuilders.git", :tag => "#{s.version}" }
  s.source_files  = "FunctionalBuilders/*.swift"

end
