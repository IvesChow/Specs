Pod::Spec.new do |s|
  s.name         = "TestFlightFeedback"
  s.version      = "2.1.1"
  s.summary      = "Dropdown replacement for the feedback view controller functionality which was cuted from TestFlight SDK"
  s.homepage     = "https://github.com/DZamataev/TestFlightFeedback"
  s.license      = { :type => 'MIT', :file => 'LICENSE'}
  s.author       = { "Denis Zamataev" => "denis.zamataev@gmail.com" }

  s.ios.deployment_target = '7.0'
	
  s.source       = {
      :git => "https://github.com/DZamataev/TestFlightFeedback.git",
      :tag => s.version.to_s
    }

  s.default_subspec = 'Core'
  s.requires_arc = true

  s.subspec 'Core' do |c|
    c.requires_arc = true
    c.source_files = 'Core/Source/*'
    c.resources = 'Core/Resources/*'
  	c.dependency 'TestFlightSDK', '>= 2.0'
  end

  s.subspec 'Demo' do |d|
    d.requires_arc = true
    d.source_files = 'Demo/Source/*'
    d.resources = 'Demo/Resources/*'
    d.preserve_paths = "TestFlightFeedback.xcodeproj", "Podfile"
    d.dependency 'TestFlightFeedback/Core'
  end

end
