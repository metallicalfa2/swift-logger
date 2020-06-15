Pod::Spec.new do |spec|
  spec.name         = "BestLogger"
  spec.version      = "0.0.1"
  spec.platform = :ios, "10.0"
  spec.summary      = "A simple, one file, logger for swift"
  spec.homepage     = "https://github.com/rathishubham017/best-logger"
  spec.license      = { :type => 'MIT', :file => 'License.md' }
  spec.swift_version   = "5.0"
  spec.author       = { "Shubham Rathi" => "rathishubham017@gmail.com" }
  spec.module_name = "BestLogger"
  spec.source       = { :git => "https://github.com/rathishubham7/swift-logger.git", :tag => spec.version }
  spec.source_files = "Sources/BestLogger/*.{swift}","Sources/BestLogger/**/*.{swift}"
  spec.dependency 'Torus-utils', '~> 0.0.1'
end
