Pod::Spec.new do |s|
  s.name         = "OCMock3"
  s.version      = "3.0.2"
  
  s.summary      = "Mock objects for Objective-C"
  s.description      = <<-DESC
                        OCMock is an Objective-C implementation of mock objects. It provides
                        stubs that return pre-determined values for specific method invocations,
                        dynamic mocks that can be used to verify interaction patterns, and
                        partial mocks to overwrite selected methods of existing objects.
                        DESC
  
  s.homepage     = "http://ocmock.org"
  s.license      = { :type => "Apache 2.0", :file => "Source/License.txt" }

  s.author             = { "Erik Doernenburg" => "erik@doernenburg.com" }
  s.social_media_url   = "http://twitter.com/erikdoe"
  
  s.source       = { :git => "https://github.com/Logi24/ocmock.git", :tag => "v3.0.2" }
  s.source_files  = "Source/OCMock3/*.{h,m}"
  
  s.public_header_files = ["OCMock.h", "OCMockObject.h", "OCMArg.h", "OCMConstraint.h", "OCMLocation.h", "OCMMacroState.h", "OCMRecorder.h", "OCMStubRecorder.h", "NSNotificationCenter+OCMAdditions.h"].map { |file|
    "Source/OCMock3/" + file
  }
  
  s.framework = "XCTest"
  s.requires_arc = false
end
