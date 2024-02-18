Pod::Spec.new do |s|
  s.name             = 'ShapeAreaCalculator'
  s.version          = '1.0.0'
  s.summary          = 'Library for calculating shape area'

  s.homepage         = 'https://github.com/poznakks/ShapeAreaCalculator'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Vlad Boguzh' => 'boguzhvlad@gmail.com' }
  s.source           = { :git => 'https://github.com/poznakks/ShapeAreaCalculator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/**/*'
end