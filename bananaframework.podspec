Pod::Spec.new do |s|
	s.name = "Bananaframework"
	s.version = "1.1.0"
	s.summary = "This is banana framework"
	s.description = <<-DESC
	This is the framework for all the minions out there.
	DESC
	s.homepage = "https://www.google.com"
	s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author = { "$(git config user.name)" => "$(git config user.email)" }
    s.source = { :http => 'https://raw.githubusercontent.com/nrlnishan/bananaframework/main/Frameworks.zip' }
    s.ios.vendored_frameworks = 'Frameworks/bananaframework.xcframework'
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '13.0'
    s.dependency 'RealmSwift', '10.32.2'
end
